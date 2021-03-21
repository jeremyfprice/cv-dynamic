import jinja2
import json

education = json.load('education.json')

env = jinja2.environment.Environment(
    loader=jinja2.FileSystemLoader('~/Documents/github/cv-dynamic/')
)
template = env.get_template('cv-test.html.jinja')
with open('~/Documents/github/cv-dynamic/cv-test3.html', "w") as f:
    f.write(template.render(**data))