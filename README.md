#Docker Compose: 
#Nginx with blocks (nginx virtual hosts) with DOCKER

Run this with `docker-compose up -d`, then run `docker ps -a`.<br /> 
And see Nginx up and running on ports: `80:80`,`8080:8080`,`9090:9090`.



Try after run:

First site:
http://127.0.0.1/

Second site:
http://127.0.0.1:8080/

Third site:
http://127.0.0.1:9090/

<br />
#Configuration:

This is what iv'e used..
You can change the sites, just like in any Nginx.

├── docker-compose.yml
└── nginx-data
    ├── conf
    │   └── nginx.conf
    ├── site-data
    │   ├── example_one
    │   │   └── index.html
    │   ├── example_three
    │   │   └── index.html
    │   └── example_two
    │       └── index.html
    └── sites-available
        ├── example_one.com
        ├── example_three.com
        └── example_two.com
<br />
#Edit in files:

* Edit in `nginx-data/sites-available`:
<br />
Change the site configuration, like port and root folder, you can add sites.

* Edit in `nginx-data/site-data`:
<br />
This is where your site goes - folders amd files.

* Edit in `nginx-data/conf/nginx.conf`:
<br />
This is allready goes to `sites-available`, nothing to do here.

<br />
#Docker install:

https://docs.docker.com/engine/installation/

<br />
#Docker Compose install:

https://docs.docker.com/compose/install/
