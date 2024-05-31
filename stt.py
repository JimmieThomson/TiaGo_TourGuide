import  azure.cognitiveservices.speech as speechsdk  
import time
import os
# Creates an instance of a speech config with specified subscription key and service region.  
# Replace with your own subscription key and service region (e.g., "westus").  
            
def speech_recognize_continuous():
    """performs continuous speech recognition with input from an audio file"""
    speech_config = speechsdk.SpeechConfig(subscription=os.environ.get('AZURE_API_KEY'), region=os.environ.get('AZURE_REGION'))
    speech_config.speech_recognition_language="en-US"
    # Set the desired device index (replace with your actual device index)
    device_index = 1
    audio_config = speechsdk.audio.AudioConfig(device_name=f"plughw:{device_index},0")

    speech_recognizer = speechsdk.SpeechRecognizer(speech_config=speech_config, audio_config=audio_config)
    
    done = False
    keyword = "stop"  # Replace with your desired keyword
    
    def recognized_cb(evt):
        """callback that stops continuous recognition if the keyword is recognized"""
        result = evt.result
        if result.reason == speechsdk.ResultReason.RecognizedSpeech:
            if keyword.lower() in result.text.lower():
                print('KEYWORD RECOGNIZED: {}'.format(result.text))
                stop_cb(evt)
            else:
                print('RECOGNIZED: {}'.format(result.text))

    def stop_cb(evt):
        """callback that stops continuous recognition upon receiving an event `evt`"""
        print('CLOSING on {}'.format(evt))
        speech_recognizer.stop_continuous_recognition()
        nonlocal done
        done = True

   # Connect callbacks to the events fired by the speech recognizer
    speech_recognizer.recognized.connect(recognized_cb)
    speech_recognizer.session_started.connect(lambda evt: print('SESSION STARTED: {}'.format(evt)))
    speech_recognizer.session_stopped.connect(lambda evt: print('SESSION STOPPED {}'.format(evt)))
    speech_recognizer.canceled.connect(lambda evt: print('CANCELED {}'.format(evt)))
    
    # Stop continuous recognition on either session stopped or canceled events
    speech_recognizer.session_stopped.connect(stop_cb)
    speech_recognizer.canceled.connect(stop_cb)
    
    # Start continuous speech recognition
    speech_recognizer.start_continuous_recognition()
    
    while not done:
        time.sleep(.5)

speech_recognize_continuous()