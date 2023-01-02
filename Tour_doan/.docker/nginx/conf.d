server {
    listen 80;
    index index.php index.html;

    error_log  /var/log/nginx/error.log;
    access_log /var/log/nginx/access.log;
    client_max_body_size 1000M;
    root /home/Tour_doan/public;

    location ~ \.php$ {
        try_files $uri =404;
        fastcgi_split_path_info ^(.+\.php)(/.+)$;
        fastcgi_pass app:9000;
        fastcgi_index index.php;
        include fastcgi_params;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        fastcgi_param PATH_INFO $fastcgi_path_info;
        fastcgi_hide_header X-Powered-By;
    }

    location / {
        try_files $uri $uri/ /index.php?$query_string;
        gzip_static on;
    }


    location /status {
        access_log off;
        # allow 127.0.0.1;
        # deny all;
        include fastcgi_params;
        fastcgi_pass app:9000;
    }

    location /ping {
        access_log off;
        # allow 127.0.0.1;
        # deny all;
        include fastcgi_params;
        fastcgi_pass app:9000;
    }
}