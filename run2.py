from flask import Flask, render_template
import json
from pathlib2 import Path

app = Flask(__name__)

@app.route("/")
def education_items():
    edu_items = []
    with open('education.json') as json_file: 
	    edu_items = json.load(json_file)
    return render_template('cv-standard.html', education = edu_items)
#print(edu_data)

if __name__ == '__main__':
    app.run(debug=True)