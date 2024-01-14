A partir de cette liste de commande et d'action ecrit moi un mardown complet 
Note les nom de variables des choses qui sont dynamique d'un $name_var 


cd /etc/nginx/sites-available/

ls 

// -> Regarder qu'elle fichier doit etre modifier pour que le site soit accessible en https
vim $nom_fichier

// -> Modifier le fichier pour que le site soit accessible en https
# server {
    #     server_name development.prepera.io;
    #     return 301 https://$host$request_uri;
    # }
    
    
    server {
    
        server_name development.prepera.io;
    
        location = /favico.ico  {
            root /app/favico.ico;
    
        }
    
        location ~/.well-known {
            allow all;
            alias /var/www/html/.well-known;
        }
    
        location /assets/ {
            # alias /home/prepdev/prepera/django/media/;
            alias /home/prepdev/prepera-general/django/media/;
        }
    
        location / {
            proxy_pass         http://127.0.0.1:5757;
            proxy_redirect     off;
            proxy_set_header   Host $host;
            proxy_set_header   X-Real-IP $remote_addr;
            proxy_set_header   X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_set_header   X-Forwarded-Host $server_name;
        }
    
        client_max_body_size 500M;
    
    }
    
    server {
        if ($host = development.prepera.io) {
            return 301 https://$host$request_uri;
        } # managed by Certbot
    

        server_name development.prepera.io;
        listen 80;
        return 404; # managed by Certbot
    }
    
// -> Verifier que le fichier est bien modifier
sudo nginx -t

// -> Relancer le service nginx
sudo service nginx restart

// -> Signer le certificat
sudo certbot --nginx -d development.prepera.io

// -> Verifier que le fichier de configuration est bien modifier, si non modifier le
sudo vim $nom_fichier  

// -> Verifier que la configuration est bien prise en compte
sudo nginx -t

// -> Relancer le service nginx
sudo service nginx restart


