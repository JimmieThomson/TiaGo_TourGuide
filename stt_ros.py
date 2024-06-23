import azure.cognitiveservices.speech as speechsdk
from dotenv import load_dotenv
import json
from pal_interaction_msgs.msg import TtsAction, TtsGoal, AudioPlayerState
from std_msgs.msg import String, Bool
import rospy
import actionlib
from tiago_common.open_ai_utils import OpenAIUtils
import time
# from tiago_common.src.tiago_common.open_ai_utils import OpenAIUtils


# Creates an instance of a speech config with specified subscription key and service region.
# Replace with your own subscription key and service region (e.g., "westus").
class STT:
    def __init__(self) -> None:
        self.isNavigating = None
        nav_state = "/navigation/state"
        nav_topic = "/navigation/command"
        rospy.Subscriber(nav_state, Bool, self.navigation_callback)
        self.tts_client = actionlib.SimpleActionClient("/tts", TtsAction)
        self.tts_client.wait_for_server()
        self.nav_com = rospy.Publisher(nav_topic, String, queue_size=1)

    def navigation_callback(self, data):
        print(f"Callback: {data.data}")
        self.isNavigating = data.data

    def send_tts(self, text):
        goal = TtsGoal()
        goal.rawtext.text = text
        goal.rawtext.lang_id = "en_GB"
        # Send the goal and wait
        self.tts_client.send_goal_and_wait(goal)

    def speech_recognize(self):
        speech_config = speechsdk.SpeechConfig(
            subscription="", region="eastus"
        )
        device_index = 1

        # For Tiago
        audio_config = speechsdk.audio.AudioConfig(
            device_name=f"plughw:{device_index},0"
        )

        # For local testing
        # audio_config = speechsdk.audio.AudioConfig(use_default_microphone=True)
        speech_recognizer = speechsdk.SpeechRecognizer(
            speech_config=speech_config, audio_config=audio_config
        )

        # keyword = "hello"  # Replace with your desired keyword
        open_ai_util = OpenAIUtils(
            api_key=""
        )

        print("Speak into your microphone.")
        result = speech_recognizer.recognize_once_async().get()
        if result.reason == speechsdk.ResultReason.RecognizedSpeech:
            print("RECOGNIZED: {}".format(result.text))
            # if keyword.lower() in result.text.lower():
            response = open_ai_util.chat_completion(result.text)
            res_txt = response.choices[0].message.content
            try:
                json_res = json.loads(res_txt)
                print(json_res)
                res_type = json_res["type"]
                content = json_res["content"]
                print(f"res_type: {res_type}\n content: {content}")
                if res_type == "navigation":
                    self.send_tts(f"Heading to {content}")
                    self.nav_com.publish(content)
                    self.isNavigating = True
                    print(f"isNavigating: {self.isNavigating}")
                    while self.isNavigating:
                        time.sleep(1)
                elif res_type == "chat":
                    self.send_tts(content)
            except Exception:
                print("Error while parsing the response")
        elif result.reason == speechsdk.ResultReason.NoMatch:
            print("No speech could be recognized: {}".format(result.no_match_details))


# FOR TIAGO
if __name__ == "__main__":
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
