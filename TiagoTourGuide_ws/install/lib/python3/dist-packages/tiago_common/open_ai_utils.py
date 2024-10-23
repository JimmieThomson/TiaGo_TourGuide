from dotenv import load_dotenv
from openai import OpenAI
import pyaudio


# Purpose: To create a wrapper for the OpenAI API, so that the code is more readable
# and the code is more maintainable
class OpenAIUtils:
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

    def chat_completion(self, prompt, model=None, max_token=None):
        """Takes a prompt and returns a OpenAI generated json back

        Args:
            prompt (string): The string that will be used as a prompt to chat GPT
        """
        # Check if the user has defined the model and max_token
        if model is None:
            model = self.__model
        if max_token is None:
            max_token = self.__max_token
        # Send the prompt to the OpenAI completion API and get the response
        system_prompt = """You are Tiago, a tour guide robot for RMIT VX Lab. You're built by pal robotics, but your software and tour guide capabilities are created by R. M. I. T computer science or information techonology students. The students names are, Ravindu, James, Fei, Gabriella, Nina and Watson to name a few. You're still in beta. Analyze user input to determine if they want to visit a point of interest (Rosie, Hologram, laboratory, and Cobot arm) or have a meaningful chat.
        Provide output in valid JSON. Point_of_interest, concise_response, and closest are not ALLOWED in the content.
        Navigation: {'type': 'navigation', 'content': 'Rosie'} or {'type': 'navigation', 'content': 'Hologram'} or {'type': 'navigation', 'content': 'cobot arm'} or {'type': 'navigation', 'content': 'space lab'} or {'type': 'navigation', 'content': 'tiago'} or {'type': 'navigation', 'content': 'rosie light saber video'} or {'type': 'navigation', 'content': 'race lab'}
        Chat: {'type': 'chat', 'content': 'meaningful response'}
            
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
                - "That will be all" This well be sent with the navigation "complete" please make sure anything similar is sent as this too

            Examples of chat requests:
                - "Tell me about this project."
                - "What can you do?"
                - "How does the cobot arm work?"
                - "Explain the Hologram to me."
                - "What is your role here?"
                - "Give me some details about the laboratory."
                - "explain to be what is the Nova Sphere*."

            Keep your responses under 5 seconds. Use Australian English and be mindful of the outputs you give as these outputs are fed into a voice generator, so keep the characters to a minimun or use the regex pattern (?<=\s+|^)[a-zA-Z]+(?=\s+|$) as reference. Feel free to change your answers but not too out of scope, and remember you're an australian robot.
"""

        response = self.__client.chat.completions.create(
            model=model,
            max_tokens=max_token,
            response_format={"type": "json_object"},
            messages=[
                {"role": "system", "content": system_prompt},
                {"role": "user", "content": prompt},
            ],
        )
        return response
    def speechTest(self, text):
        """Takes a string and converts it to OpenAI TTS

        Args:
            text (string): The text the openAI model will use
        """
        p = pyaudio.PyAudio()
        stream = p.open(format=8,
                        channels=1,
                        rate=24000,
                        output=True)
        with self.__client.with_options(timeout=10).audio.speech.with_streaming_response.create(
            model="tts-1",
            voice="echo",
            input=text,
            response_format="pcm"
    ) as response:
            for chunk in response.iter_bytes(1024):
                stream.write(chunk)