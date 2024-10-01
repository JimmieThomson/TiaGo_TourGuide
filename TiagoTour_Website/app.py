from flask import Flask, render_template

app = Flask(__name__)

@app.route('/', methods = ['POST'])
def index():
    print("KMS!!")

if __name__ == "__main__":
    app.run()