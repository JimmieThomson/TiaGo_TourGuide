import io
from os import read
import os
import azure.cognitiveservices.speech as speechsdk
import json
from tiago_common.open_ai_utils import OpenAIUtils
from openai import OpenAI
import time
import pyaudio
from playsound import playsound
def speech_recognize():
        speech_config = speechsdk.SpeechConfig(
            subscription="d96adedd2c31424ebd8d093444fb738a", region="eastus"
        )
        device_index = 1
        is_navigating_door = True

        # For Tiago
        audio_config = speechsdk.audio.AudioConfig(
            device_name=f"plughw:CARD=PAL_ANDREA,DEV=0"
        )

        # For local testing
        # audio_config = speechsdk.audio.AudioConfig(use_default_microphone=True)
        speech_recognizer = speechsdk.SpeechRecognizer(
            speech_config=speech_config, audio_config=audio_config
        )

        keyword = "hey bandit"  # Replace with your desired keyword
        open_ai_util = OpenAIUtils(
            api_key="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"
        )

        print("Speak into your microphone.")
        result = speech_recognizer.recognize_once_async().get()
        if result.reason == speechsdk.ResultReason.RecognizedSpeech:
            print("RECOGNIZED: {}".format(result.text))
            if keyword.lower() in result.text.lower() and is_navigating_door == True:
                #playsound("thinking.wav")
                if "the door is open" in result.text.lower():
                    print("Thank you I'll go through it now!")
                
                else:
                    # Old Code
                    response = open_ai_util.chat_completion(result.text)
                    res_txt = response.choices[0].message.content
                    #speechTest("hold_on.wav")
                    try:
                        json_res = json.loads(res_txt)
                        print(json_res)
                        res_type = json_res["type"]
                        content = json_res["content"]
                        print(f"res_type: {res_type}\n content: {content}")
                        if res_type == "navigation":
                            speechTest(f"Heading to {content}")
                        elif res_type == "chat":
                            speechTest(content)
                    except Exception as e:
                        print(f"Error while parsing the response:\t {e}")
        elif result.reason == speechsdk.ResultReason.NoMatch:
            print("No speech could be recognized: {}".format(result.no_match_details))

def speechTest(text):
    p = pyaudio.PyAudio()
    stream = p.open(format=8,
                    channels=1,
                    rate=24000,
                    output=True)

    client = OpenAI(api_key="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")
    with client.audio.speech.with_streaming_response.create(
        model="tts-1",
        voice="alloy",
        input=text,
        response_format="pcm"
) as response:
        for chunk in response.iter_bytes(1024):
            stream.write(chunk)
while(True):
    speech_recognize()