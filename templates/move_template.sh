#!/bin/sh
pushd ~/pdgh/manifest && python ~/pdgh/python-practice/add-remove-xml-nodes/t.py -f ~/pdgh/manifest/default.xml --add "{{ project }}" && git commit -m "Add {{ project }} project" -a && git show --color
git push && popd && git remote add gh git@github.com:taylormonacelli/{{ project }}.git
git push --set-upstream gh master --force; git push gh --all
python ~/pdgh/python-practice/add-remove-xml-nodes/t.py -f ~/pdev/manifest/default.xml --remove "{{ project }}" && cd ~/pdev/manifest && git diff --color && git commit -m "Move {{ project }} project to github" -a
git push
ssh dev
mv /var/www/html/proj/{{ project }}.git /var/www/html/proj.movetogithub

