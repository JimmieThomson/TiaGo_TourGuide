from flask import Flask, render_template

app = Flask(__name__)

@app.route('/', methods = ['POST'])
def index():
    print("KMS!!")
    return("true")

if __name__ == "__main__":
    app.run(host="0.0.0.0")
    