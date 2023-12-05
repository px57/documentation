Documentation système
de module

Sommaire :

Création d'un nouveau projet.


Création d'un nouveau module angular. 
script de de génération de module
Création d'un component angular. 
Script de génération de module.-
administration i18n angular
administration i18n Django
administration i18n flutter
déploiement angular
Mediacenter


Introduction :

Création d'un nouveau projet.

Tout d'abord utiliser la commande.

git clone  –recursive $link 

Ensuite il faut changer le dépot aussi bien du coté back que front, ainsi que sur
mobile.

Pour cela ont fait:

—-------
cd ./back/
git remote $newgit
git add -A; git commit -m "first push"; git push origin main
—--------
cd ./../front/
git remote $newgit
git add -A; git commit -m "first push"; git push origin main
—---------
cd ./../mobile/
git remote $newgit
git add -A; git commit -m "first push"; git push origin main
—-----------
sow new project ${name}

Suivre les étapes concernant la création.

Création d'un nouveau module angular

Lors de la création de nouveau module ont utilisé la ligne de commande suivante

sow ng c m ${name}

Création d'un nouveaux component 

Lors de la création d'un component ont fait. 

sow ng c c ${name-new-component}
 
Script-process:
Regarder si le nom du component est déjà utiliser.
utiliser la fonction ng g c pour générer les fichiers dédier au component.
modifier le texte interne.
déplacer les fichiers en direction du gestionnaire de templates actuelle.
Ensuite il faut lancer le processus de merge.
Spécificité:

Déja le nom de l'attribue


Administration i18n angular

Pour générer un fichier de traduction il faut taper la commande suivante

sow ng i18n generate ./file.trad.xls

après traduction, pour mettre à Jour le fichier de traduction faire ceci

sow ng i18n update ./file.trad.xls

Administration i18n django

Traduction DB:

La traduction
Administration i18n flutter





Déploiement angular

Pour déployer le code angular sur le serveur il suffit de faire ceci :

sow ng deploy

Script-process:
Déjà il faudrait mettre à jour la date du build.
Ensuite lancer le processus de build traditionnelle.




		
	Mediacenter->Inject file with os.


—---------------------
from  mediacenter.libs import external_set_file

def external_set_file(
       label_interface: str,
       file: str,
       dbProfile=None,
   ):
   """
       @description: Set the file, with the os systeme.
       @params.label -> instance label.
       @params.file -> file pathname.
       @params.dbProfile -> Profile.
   """


—------------------------------



