Voici un exemple de Markdown complet pour installer et configurer un certificat SSL sur un serveur Nginx, en utilisant les commandes et les actions que vous avez fournies. J'ai inclus des commentaires pour expliquer chaque étape et utilisé `$nom_fichier` comme variable pour le nom du fichier de configuration à modifier.

```markdown
# Configuration SSL pour Nginx

Ce guide détaille les étapes pour configurer un certificat SSL sur un serveur Nginx.

## Étapes de Configuration

### 1. Accéder au Dossier de Configuration de Nginx

Ouvrez un terminal sur votre serveur et exécutez la commande suivante pour aller dans le dossier de configuration des sites disponibles de Nginx :

```bash
cd /etc/nginx/sites-available/
```

### 2. Identifier le Fichier de Configuration à Modifier

Listez les fichiers pour trouver celui correspondant à votre site :

```bash
ls
```

### 3. Modifier le Fichier de Configuration

Ouvrez le fichier de configuration avec un éditeur de texte, par exemple `vim`. Remplacez `$nom_fichier` par le nom réel du fichier.

```bash
vim $nom_fichier
```

Ajoutez ou modifiez les blocs de configuration pour rediriger le trafic HTTP vers HTTPS et configurer le serveur pour utiliser SSL. Voici un exemple de configuration :

```nginx
server {
    if ($host = development.prepera.io) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    # ... autres configurations ...

    listen 80;
    server_name development.prepera.io;
    return 404; # managed by Certbot
}

server {
    # ... configurations SSL ...

    listen 443 ssl; # activation SSL
    server_name development.prepera.io;

    # ... autres configurations ...
}
```

### 4. Vérifier la Configuration de Nginx

Testez la configuration pour s'assurer qu'il n'y a pas d'erreurs :

```bash
sudo nginx -t
```

### 5. Relancer le Service Nginx

Si la configuration est correcte, redémarrez Nginx pour appliquer les changements :

```bash
sudo service nginx restart
```

### 6. Signer le Certificat avec Certbot

Utilisez Certbot pour obtenir et installer automatiquement un certificat SSL :

```bash
sudo certbot --nginx -d development.prepera.io
```

### 7. (Optionnel) Modifier à Nouveau le Fichier de Configuration

Si Certbot n'a pas automatiquement mis à jour votre configuration, vous devrez peut-être le faire manuellement. Ouvrez à nouveau le fichier de configuration :

```bash
sudo vim $nom_fichier
```

### 8. Vérifier à Nouveau et Redémarrer Nginx

Après toute modification, vérifiez à nouveau la configuration et redémarrez Nginx :

```bash
sudo nginx -t
sudo service nginx restart
```

## Conclusion

Votre site devrait maintenant être sécurisé avec SSL. N'oubliez pas de vérifier votre site en accédant à `https://votredomaine.com`.
```

Assurez-vous de remplacer `development.prepera.io` et `$nom_fichier` par vos propres valeurs. Vous pouvez également ajuster les détails de la configuration Nginx selon vos besoins spécifiques.
