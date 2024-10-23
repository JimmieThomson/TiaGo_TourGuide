import azure.cognitiveservices.speech as speechsdk
from dotenv import load_dotenv
import json
from pal_interaction_msgs.msg import TtsAction, TtsGoal, AudioPlayerState
from std_msgs.msg import String, Bool
import rospy
import actionlib
from tiago_common.open_ai_utils import OpenAIUtils
import time
import os
# Author: Tiago Team
# from tiago_common.src.tiago_common.open_ai_utils import OpenAIUtils
# Creates an instance of a speech config with specified subscription key and service region.
# Replace with your own subscription key and service region (e.g., "westus").


class STT:
    # Class variables
    _speech_config = speechsdk.SpeechConfig(
        subscription=os.environ.get('azureAPI'), region="eastus"
    )
    _device_index = 1

    # For Tiago
    _audio_config = speechsdk.audio.AudioConfig(
        device_name=f"plughw:CARD=PAL_ANDREA,DEV=0"
    )
    # For local testing
    # audio_config = speechsdk.audio.AudioConfig(use_default_microphone=True)
    _speech_recognizer = speechsdk.SpeechRecognizer(
        speech_config=_speech_config, audio_config=_audio_config
    )
    _open_ai_util = OpenAIUtils(
        api_key=os.environ.get('openAPI')
    )
    _waitingdoor = True

    def __init__(self) -> None:
        self.isPlaying = False
        self.isNavigating = None
        audio_state_topic = "/navigation/audio/"
        nav_state = "/navigation/state"
        rospy.Subscriber(audio_state_topic, Bool, self.audio_callback)
        rospy.Subscriber(nav_state, Bool, self.navigation_callback)
        self.tts_client = actionlib.SimpleActionClient("/tts", TtsAction)
        self.tts_client.wait_for_server()
        self.nav_com = rospy.Publisher(nav_topic, String, queue_size=1)
        self._open_ai_util.speechTest(
            "Ok, I'm ready to respond, please stand infront of me and speak clearly into my microphone, some times I can't hear things so you might need to repeat yourself!")

    def audio_callback(self, data):
        """used to return wether the speaker is in use

        Args:
            data (data): data returned by the topic
        """
        print(f"Callback_state: {data.data}")
        self.isPlaying = data.data

    def navigation_callback(self, data):
        """Callback for the wether Tiago is navigating or not

        Args:
            data (data): data returned by the topic
        """
        print(f"Callback_audio: {data.data}")
        self.isNavigating = data.data

    def send_tts(self, text):
        """deprecated method for Tiago's old voice box

        Args:
            text (text): text which Tiago will generate TTS
        """
        goal = TtsGoal()
        goal.rawtext.text = text
        goal.rawtext.lang_id = "en_GB"
        # Send the goal and wait
        self.tts_client.send_goal_and_wait(goal)

    def speech_recognize(self):
        """Method is repeated to listen to a users voice and create a action"""
        print(self.isPlaying)
        if not self.isPlaying:
            keyword = ["hey bandit", "hey bended", "hey thiago", "hey tiago", "hey tioga", "hi thiago",
                       "hi bandit", "Hi, Bennett", "A bandit", "Hey Ben", "Hey Tiger"]  # Replace with your desired keyword

            print("Speak into your microphone.")
            result = self._speech_recognizer.recognize_once_async().get()
            if result.reason == speechsdk.ResultReason.RecognizedSpeech:
                print("RECOGNIZED: {}".format(result.text))
                if any(word.lower() in result.text.lower() for word in keyword):
                    if "the door is open" in result.text and self._waitingdoor:
                        self._open_ai_util.speechTest(
                            "OK, thank you! I am going through the door now")
                        self.nav_com.publish('go through door')
                        self._waitingdoor == False
                    else:
                        self._open_ai_util.speechTest("hmmmmm")
                        response = self._open_ai_util.chat_completion(
                            result.text)
                        res_txt = response.choices[0].message.content
                    try:
                        json_res = json.loads(res_txt)
                        print(json_res)
                        res_type = json_res["type"]
                        content = json_res["content"]
                        print(f"res_type: {res_type}\n content: {content}")
                        if res_type == "navigation":
                            if "soccer lab" in content:
                                self._waitingdoor = True
                            if content == "complete":
                                self._open_ai_util.speechTest(
                                    f"Please move out of my way")
                            else:
                                self._open_ai_util.speechTest(
                                    f"Heading to {content}, Please move out of my way")
                            self.nav_com.publish(content)
                            self.isNavigating = True
                            print(f"isNavigating: {self.isNavigating}")
                            while self.isNavigating:
                                time.sleep(1)
                        elif res_type == "chat":
                            self._open_ai_util.speechTest(content)
                    except Exception as e:
                        print("Error while parsing the response: " + str(e))
                    except Exception:
                        print("Keywords weren't found")
            elif result.reason == speechsdk.ResultReason.NoMatch:
                print("No speech could be recognized: {}".format(
                    result.no_match_details))


# FOR TIAGO
if __name__ == "__main__":
    nav_topic = "/navigation/command"
    try:
        rospy.init_node("tiago_stt")
        load_dotenv("stt.env")
        rate = rospy.Rate(1)  # 1hz
        stt = STT()
        while not rospy.is_shutdown():
            stt.speech_recognize()
            rate.sleep()
    except rospy.ROSInterruptException:
        pass
