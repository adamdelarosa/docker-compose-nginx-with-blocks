# docker-compose: Nginx with blocks (nginx virtual hosts) with DOCKER

Run this with "docker-compose up -d", then run "docker ps -a" and see Nginx up and running on ports: "80:80","8080:8080","9090:9090".

Try after run:

http://127.0.0.1/
http://127.0.0.1:8080/
http://127.0.0.1:9090/

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


* Edit in "sites-available":
Change the site configuration, like port and root folder, you can add sites.

* Edit in "site-data":
This is where your site goes - folders amd files.

* Edit in "nginx-data":
This is allready goes to "sites-available", nothing to do here.

#Docker install:

https://docs.docker.com/engine/installation/

#Docker Compose install:

https://docs.docker.com/compose/install/
