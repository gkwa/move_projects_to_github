#!/bin/sh
cd ~/pdgh/manifest
python ~/pdev/python-practice/add-remove-xml-nodes/t.py -f ~/pdgh/manifest/default.xml --add "{{ project }}"
git commit -m "Add {{ project }} project" -a
git show --color
git remote add gh git@github.com:taylormonacelli/{{ project }}.git
git push --set-upstream gh master --force
cd ~/pdgh
repo sync "{{ project }}"
(cd ~/pdgh/{{ project }} && git lpo)
python ~/pdev/python-practice/add-remove-xml-nodes/t.py -f ~/pdev/manifest/default.xml --remove "{{ project }}"
cd ~/pdev/manifest
git diff --color
git commit -m "Move {{ project }} project to github" -a
ssh dev mkdir -p /var/www/html/proj.movetogithub
ssh dev mv /var/www/html/proj/{{ project }}.git /var/www/html/proj.movetogithub
