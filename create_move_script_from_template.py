import argparse
from jinja2 import Environment
from jinja2.loaders import FileSystemLoader

parser = argparse.ArgumentParser()
parser.add_argument("-p", "--project",help="project name")

args = parser.parse_args()
env = Environment(loader=FileSystemLoader('/Users/demo/pdgh/move_projects_to_github/templates'))
script_tmpl = env.get_template('move_template.sh')
script = "move.sh"

script_tmpl.stream(
    project=args.project
).dump(script)

print "cat move.sh"