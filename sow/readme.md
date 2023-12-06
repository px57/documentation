# sow

## Documentation systeme de module&#x20;



### Sommaire:&#x20;







# Documentation système de module

## Sommaire:

- [Création d'un nouveau projet](#création-dun-nouveau-projet)
- [Création d'un nouveau module angular](#création-dun-nouveau-module-angular)
- [Création d'un component angular](#création-dun-component-angular)
- [Administration i18n angular](#administration-i18n-angular)
- [Administration i18n Django](#administration-i18n-django)
- [Administration i18n flutter](#administration-i18n-flutter)
- [Déploiement angular](#déploiement-angular)
- [Mediacenter](#mediacenter)

## Introduction

### Création d'un nouveau projet

1. Utiliser la commande:

2. Changer le dépôt du côté back et front, ainsi que sur mobile.
- Pour le dossier `./back/`:
  ```
  cd ./back/
  git remote $newgit
  git add -A; git commit -m "first push"; git push origin main
  ```
- Pour le dossier `./../front/`:
  ```
  cd ./../front/
  git remote $newgit
  git add -A; git commit -m "first push"; git push origin main
  ```
- Pour le dossier `./../mobile/`:
  ```
  cd ./../mobile/
  git remote $newgit
  git add -A; git commit -m "first push"; git push origin main
  ```
3. Créer un nouveau projet:


Suivre les étapes concernant la création.

### Création d'un nouveau module angular

Lors de la création d'un nouveau module, utilisez la ligne de commande suivante:


### Création d'un nouveau component

Lors de la création d'un component, utilisez la ligne de commande suivante:


#### Script-process:

- Regarder si le nom du component est déjà utilisé.
- Utiliser la fonction `ng g c` pour générer les fichiers dédiés au component.
- Modifier le texte interne.
- Déplacer les fichiers en direction du gestionnaire de templates actuel.
- Ensuite, lancer le processus de merge.

#### Spécificité:

Déjà le nom de l'attribut

### Administration i18n angular

Pour générer un fichier de traduction, utilisez la commande suivante:


Après traduction, pour mettre à jour le fichier de traduction, faites ceci:


### Administration i18n Django

#### Traduction DB:

La traduction

### Administration i18n flutter

## Déploiement angular

Pour déployer le code angular sur le serveur, faites ceci:


#### Script-process:

- Déjà, il faudrait mettre à jour la date du build.
- Ensuite, lancer le processus de build traditionnel.

## Mediacenter

### Inject file with os.

```python
from mediacenter.libs import external_set_file

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
