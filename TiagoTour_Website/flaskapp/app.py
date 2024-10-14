from flask import Flask, render_template
import subprocess
app = Flask(__name__)

@app.route('/')
def home():
   return render_template('tiago.html')

@app.route('/start', methods =['POST'])
def start():
   subprocess.Popen(['source', '/TiaGo_TourGuide/TiagoTourGuide_ws/devel/setup.bash'],shell = True)
   subprocess.Popen(['roslaunch par_a3 run_all_nodes.launch'],shell = True)
   return "Hello"
if __name__ == '__main__':
   app.run(host="0.0.0.0", debug=True)