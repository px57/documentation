
<!-- Ce document vise a expliquer pas a pas comment deployer un projet sur le serveur dev. -->

At the end of each work session, 
it is important to deploy the work on the development server, 
so as To see where we're at and to obtain feedback from the client, 
or the not so technical members of the team.

```bash
 ssh prepdev@development.prepera.io
 #  password -> prepd3v
```

Then, once on the server, we go to the folder dedicated to angular to choose the branch.

```bash
 cd /home/prepdev/storybook/
```
 
Select the branch on which modifications have been made 

```bash
 git checkout {{branch_with_change_in_angular}}
```

Next get the latest changes from the remote repository

```bash
 git fetch --all; git reset --hard origin/{{branch_with_change_in_angular}}; git pull origin {{branch_with_change_in_angular}}
```

Once the angular project has been updated on the dev server 
Then go to the django part of the project 

```bash
cd /home/prepdev/prepera-general/django/
```

And build the project 

```bash
 sh build.sh
```
