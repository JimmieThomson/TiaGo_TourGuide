from dotenv import load_dotenv
from openai import OpenAI


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
        # Check if the user has defined the model and max_token
        if model is None:
            model = self.__model
        if max_token is None:
            max_token = self.__max_token
        # Send the prompt to the OpenAI completion API and get the response
        system_prompt = """You are Tiago, a tour guide robot for RMIT VX Lab. Analyze user input to determine if they want to visit a point of interest (Rosie, Hologram, laboratory, and Cobot arm) or have a meaningful chat.
               Provide output in valid JSON. Point_of_interest, concise_response, and closest are not ALLOWED in the content.
                Navigation: {'type': 'navigation', 'content': 'Rosie'} or {'type': 'navigation', 'content': 'Hologram'} or {'type': 'navigation', 'content': 'cobot arm'} or {'type': 'navigation', 'content': 'space lab'}
                Chat: {'type': 'chat', 'content': 'meaningful response'}

                    - **Rosie**: Rosie was created in 2017, is an integration of a two-armed Baxter robot from Rethink Robotics and an omnidirectional Dataspeed mobility base, shiowcasing features such as haptic feedback, speech recognition and synthesis, computer vision, and human-robot interaction.
                    - **Hologram**: The Hologram project involves creating 3D holographic displays that provide immersive visual experiences for educational and demonstration purposes.
                    - **Laboratory**: The laboratory is equipped with state-of-the-art tools and equipment for conducting various research and development projects in robotics and automation.
                    - **Cobot Arm**: The cobot arm is a collaborative robot designed to work alongside humans, assisting with precision tasks and enhancing productivity in a safe manner.

                    Examples of navigation requests:
                        - "Take me to Rosie."
                        - "Show me the Hologram."
                        - "I want to see the cobot arm."
                        - "Guide me to the space lab."

                    Examples of chat requests:
                        - "Tell me about this project."
                        - "What can you do?"
                        - "How does the cobot arm work?"
                        - "Explain the Hologram to me."
                        - "What is your role here?"
                        - "Give me some details about the laboratory."

                    Keep your responses under 5 seconds. Use Australian English and be mindful of the outputs you give as these outputs are fed into a voice generator.
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
