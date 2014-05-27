move_projects_to_github
=======================
Move as many as my projects to github as I can will require a script

Steps
-----
1. create empty project on github with the same name as pre-existing project
2. `git remote add gh git@github.com:taylormonacelli/{project-name}.git`
3. overwrite github project with my pre-existing project `git push gh --force`
4. remove project from git-repo manifest default ~/pdev/manifest/default.xml and commit
5. add project to ~/pdgh/manifest/default.xml and commit
6. `cd ~/pdgh && repo sync`
7. `rm -rf ~/pdev/{project-name}`
8. `ssh dev rm -rf /var/www/html/proj/{project-name}.git`

```sh
cd '/Users/demo/pdgh/manifest/'
python /Users/demo/pdev/python-practice/add-remove-xml-nodes/t.py -f /Users/demo/pdgh/manifest/default.xml --add convert_ip_to_integer
g commit -m "Add convert_ip_to_integer project" -a
git show --color
git remote add gh git@github.com:taylormonacelli/convert_ip_to_integer.git
git push --set-upstream gh master --force
cd '/Users/demo/pdgh'
repo sync convert_ip_to_integer
cd '/Users/demo/pdgh/convert_ip_to_integer/'
```

Tutorials / tidbits
------------------------------------
* http://blog.troygrosfield.com/2010/12/18/parsing-xml-with-python-using-elementtree
* finall() https://docs.python.org/2/library/xml.etree.elementtree.html
* python add elements to a set http://stackoverflow.com/questions/3392354/python-append-values-to-a-set
* elementree remove https://www.google.com/search?q=elementtree+remove&oq=elementtree+remove&aqs=chrome..69i57j0l5.5079j0j7&sourceid=chrome&es_sm=91&ie=UTF-8
