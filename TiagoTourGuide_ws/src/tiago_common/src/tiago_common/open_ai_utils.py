from dotenv import load_dotenv
from openai import OpenAI
import pyaudio
import os
from openai import AzureOpenAI
import requests
import tempfile
import wave

# Purpose: To create a wrapper for the OpenAI API, so that the code is more readable
# and the code is more maintainable
class OpenAIUtils:
    
    endpoint = "https://rg-cdi.openai.azure.com/"
    model_name = "gpt-4.1"
    deployment = "gpt-4.1"

    subscription_key = os.getenv("openAPI_Chat")
    api_version = "2024-12-01-preview"

    client = AzureOpenAI(
        api_version=api_version,
        azure_endpoint=endpoint,
        api_key=subscription_key,
    )
    
    def __init__(self, model="gpt-4o", max_token=70, api_key=None) -> None:
        # Load the .env file in the directory to get the API key for OpenAI
        load_dotenv()
        self.__client = OpenAI(api_key=api_key)
        # User can define the model and token to be used for the chat completion
        self.__model = model
        self.__max_token = max_token

    # Getter and setter for the model and max_token
    @property
    def model(self):
        return self.__model

    @model.setter
    def model(self, model):
        self.__model = model

    @property
    def max_token(self):
        return self.__max_token

    @max_token.setter
    def max_token(self, max_token):
        self.__max_token = max_token

    def chat_completion(self, prompt):
        """Takes a prompt and returns a OpenAI generated json back

        Args:
            prompt (string): The string that will be used as a prompt to chat GPT
        """
        # Send the prompt to the OpenAI completion API and get the response
        system_prompt = """You are Tiago, a tour guide robot for RMIT VX Lab. You're built by pal robotics, but your software and tour guide capabilities are created by R. M. I. T computer science or information techonology students. The students names are, Ravindu, James, Fei, Gabriella, Nina and Watson to name a few. You're still in beta. Analyze user input to determine if they want to visit a point of interest (Rosie, Hologram, laboratory, and Cobot arm) or have a meaningful chat.
        Provide output in valid JSON. Point_of_interest, concise_response, and closest are not ALLOWED in the content.
        Navigation: {'type': 'navigation', 'content': 'Rosie', 'conversation_ongoing': 'True or False'} or {'type': 'navigation', 'content': 'Hologram', 'conversation_ongoing': 'True or False'} or {'type': 'navigation', 'content': 'cobot arm', 'conversation_ongoing': 'True or False'} or {'type': 'navigation', 'content': 'space lab', 'conversation_ongoing': 'True or False'} or {'type': 'navigation', 'content': 'tiago', 'conversation_ongoing': 'True or False'} or {'type': 'navigation', 'content': 'rosie light saber video', 'conversation_ongoing': 'True or False'} or {'type': 'navigation', 'content': 'race lab', 'conversation_ongoing': 'True or False'}
        Chat: {'type': 'chat', 'content': 'meaningful response', 'conversation_ongoing': 'True or False'}
            
            - **Rosie**: Rosie was created in 2017, is an integration of a two-armed Baxter robot from Rethink Robotics and an omnidirectional Dataspeed mobility base, shiowcasing features such as haptic feedback, speech recognition and synthesis, computer vision, and human-robot interaction. 
            - **Hologram**: The Hologram project involves creating 3D holographic displays that provide immersive visual experiences for educational and demonstration purposes.
            - **Laboratory**: The laboratory is equipped with state-of-the-art tools and equipment for conducting various research and development projects in robotics and automation.
            - **Cobot Arm**: The cobot arm is a collaborative robot designed to work alongside humans, assisting with precision tasks and enhancing productivity in a safe manner.
            - **Nova Sphere**: The NOVA Simulator is the first of its kind at a Victorian university and only the second in Australia. The two metre wide sphere simulator is operated by a single person in a VR headset. It tricks the brain with its ability to quickly rotate in any direction, while audio, visual and physical sensations make it feel truly real. With its unique 360 motion replication capability, it goes step beyond other simulators to provide a much closer simulation of real life. It also captures biometric data, such as eye-tracking that can be used in conjunction with flight data from RMIT’s physical fleet to conduct deeper research and analysis. The simulator will allow RMIT researchers to conduct more detailed scenario testing and investigation around pilot performance and open up a range of new possibilities for aviation research that drives innovation and improved safety and performance.
            - **Race Lab**: The Race lab is primarily facilitating the RoboCup team. RoboCup is the premiere annual international competition for autonomous robotics. Founded in 1996, the goal for the competition is that by 2050, a team of autonomous humanoid robots will defeat the FIFA world champions. The race lab is however a place as with existing supercomputing infrastructure in high demand and complexity hindering the use of cloud services, the RACE Hub will allow researchers to be to access a self serve portal and very high speed connectivity to meet demand across the organisation and the ability to simulate their supercomputing in a cost effective, accessible platform. By offering pre configured options with cost estimates in a browsable service catalogue, cloud computing will be simpler and easier for researchers. It will transform collaborative and research opportunities for academic, industry partners

            Examples of navigation requests:
                - "Take me to Rosie."
                - "Show me the Hologram."
                - "I want to see the cobot arm."
                - "Guide me to the space lab."
                - "Can you guide me to tiago"

            Examples of chat requests:
                - "Tell me about this project."
                - "What can you do?"
                - "How does the cobot arm work?"
                - "Explain the Hologram to me."
                - "What is your role here?"
                - "Give me some details about the laboratory."
                - "explain to be what is the Nova Sphere*."

            Keep your responses under 5 seconds. Use Australian English and be mindful of the outputs you give as these outputs are fed into a voice generator, so keep the characters to a minimun or use the regex pattern (?<=\s+|^)[a-zA-Z]+(?=\s+|$) as reference. Feel free to change your answers but not too out of scope, and remember you're an australian robot.
            When a user has indicated that the converstation has ended, like goodbye or that will be all please set the ongoing conversation_ongoing to False. 
            PLEASE PLEASE DO NOT USE ANY SPECIAL CHARACTERS!!!!
"""

        response = self.client.chat.completions.create(
            messages=[
                {
                    "role": "system",
                    "content": system_prompt,
                },
                {
                    "role": "user",
                    "content": prompt,
                }
            ],
            temperature=1.0,
            top_p=1.0,
            frequency_penalty=0.0,
            presence_penalty=0.0,
            model=self.deployment
        )
        return response
    
    def speechTest(self, text):
        """Takes a string and converts it to OpenAI TTS, handling mpga and wav formats."""
        import shutil
        try:
            url = "https://rg-cdi-us.openai.azure.com/openai/deployments/gpt-4o-mini-tts/audio/speech?api-version=2025-03-01-preview"
            headers = {
                "Content-Type": "application/json",
                "Authorization": f"Bearer {os.getenv('openAPI_TTS')}"
            }
            data = {
                "model": "gpt-4o-mini-tts",
                "input": text,
                "voice": "echo"
            }

            response = requests.post(url, headers=headers, json=data, stream=True)
            response.raise_for_status()

            content_type = response.headers.get("Content-Type", "")
            if "audio/wav" in content_type:
                suffix = ".wav"
            elif "audio/mpeg" in content_type or "audio/mpga" in content_type or "audio/mp3" in content_type:
                suffix = ".mpga"
            else:
                print("[OpenAIUtils.speechTest] Error: Unexpected content type:", content_type)
                print(response.text)
                return

            with tempfile.NamedTemporaryFile(delete=False, suffix=suffix) as tmpfile:
                for chunk in response.iter_content(chunk_size=4096):
                    if chunk:
                        tmpfile.write(chunk)
                tmpfile.flush()
                filename = tmpfile.name

            # If mpga, convert to wav using ffmpeg
            if suffix == ".mpga":
                wav_filename = filename + ".wav"
                import subprocess
                try:
                    subprocess.run([
                        "ffmpeg", "-y", "-i", filename, wav_filename
                    ], check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                except Exception as e:
                    print(f"[OpenAIUtils.speechTest] ffmpeg conversion failed: {e}")
                    os.remove(filename)
                    return
                os.remove(filename)
                filename = wav_filename

            # Play audio using PyAudio
            wf = wave.open(filename, 'rb')
            p = pyaudio.PyAudio()
            stream = p.open(format=p.get_format_from_width(wf.getsampwidth()),
                    channels=wf.getnchannels(),
                    rate=wf.getframerate(),
                    output=True)
            data = wf.readframes(1024)
            while data:
                stream.write(data)
                data = wf.readframes(1024)
            stream.stop_stream()
            stream.close()
            p.terminate()
            wf.close()
            os.remove(filename)
        except Exception as e:
            print(f"[OpenAIUtils.speechTest] Exception: {e}")