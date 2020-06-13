FiveM Docker
============

Local Development

    $ git clone https://github.com/clusterworks-fivem/fivem-docker
    $ git clone https://github.com/citizenfx/cfx-server-data
    $ cp cfx-server-data/resources fivem-docker/resources
    $ cd fivem-docker

Add your server license key to `.env` file.

    LICENSE_KEY=your-license-key

Run it with docker-compose

    $ docker-compose up

Or just run docker

    $ docker build -t fivem
    $ docker run fivem 
