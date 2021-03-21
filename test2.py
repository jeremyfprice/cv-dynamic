import jinja2
import json
import re
import datetime
from pathlib2 import Path

PROJECT_DIR = Path(__file__).resolve().parent
TEMPLATE_PATH = PROJECT_DIR / "templates"
DATA_PATH = PROJECT_DIR / "json"
BUILD_PATH = PROJECT_DIR / "cv"
MYNAME = "Jeremy Price"

def load_data(json_glob):
    datas = []
    for json_file in json_glob:
        with open(json_file) as f:
            try:
                data = json.load(f)
            except:
                raise Exception('JSON wont load: {}'.format(json_file)) 
            entries = list(data.values())[0]
            datas.append(data)
    return dict((k, v) for d in datas for (k, v) in d.items())

def compile_template(data, output_path):
    # HTML Standard
    #jinja2_env = jinja2.environment.Environment(lstrip_blocks=True, loader=jinja2.FileSystemLoader(TEMPLATE_PATH))
    #template_file = jinja2_env.get_template('cv-standard.html')

    # LATEX Standard
    jinja2_env = jinja2.Environment(block_start_string='\BLOCK{',block_end_string='}', variable_start_string='\VAR{', variable_end_string='}', comment_start_string='\#{', comment_end_string='}', line_statement_prefix='%%', line_comment_prefix='%#', trim_blocks=True, autoescape=False, loader=jinja2.FileSystemLoader(TEMPLATE_PATH))
    template_file = jinja2_env.get_template('cv-standard.tex')
    with open(output_path, "w") as file:
        file.write(template_file.render(**data))

compile_template(
            load_data(list(DATA_PATH.glob("*.json"))),
            "cv/cv-standard.tex")

#with open("test2-jinja.html", "w") as file:
#    file.write(template.render(**data))