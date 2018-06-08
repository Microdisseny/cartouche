# Cartouche

Cartouche is a docker-compose stack for the [OpenStreetMap](https://github.com/openstreetmap/openstreetmap-web) website stack.

## Usage

### Install Docker

To get started, you'll need to [download the Docker Community Edition](https://www.docker.com/get-docker) and install it on your local machine.

### Clone This Repository

This repository contains several submodules which point to other Git repositories.

To clone this code and its submodules, you'll need to use the `--recursive` flag.

```
git clone --recursive git@github.com:mapbox/cartouche.git
```

If you've already cloned the repository, you can manually update the submodules by typing `git submodule update --init`.

### Build the Docker Containers

You'll need to do build all the containers images that represent the application stack.  This must be done every time you change the code.

From the main repo directory, type:

```
docker-compose build
```

### Launch Application

Once all the containers are built, all that's left is to launch the application.

```
docker-compose up --force-recreate
```

Make sure you're in the main directory of this repository (which contains a `docker-compose.yml` file).

### Navigate to Local Server

Point your browser to [http://localhost:3000](http://localhost:3000).

### Activating New Users

After creating an account, you can use the `confirm-email` script to confirm your email address.  Replace `name@example.com` below with the email address you used to sign up for an account:

```
./scripts/confirm-email.sh name@example.com
```

If the command is successful, you'll see `UPDATE 1`.  If you see `UPDATE 0`, check to make sure you typed in the email address correctly and that the account has been registered.

## Repositories

This code is made up of the following OSM libraries, which are included as Git submodules.

* [openstreetmap-website](https://github.com/openstreetmap/openstreetmap-website): the Rails application that runs [openstreetmap.com](http://openstreetmap.com); lives in the `rails` container
* [cgimap](https://github.com/openstreetmap/cgimap): A faster library for handling intensive calls to the website API; lives in the `cgimap` container
* [osmosis](https://github.com/openstreetmap/osmosis): An import/export utility for working with planetfiles and the Postgres database; lives in the `osmosis` container
* [libpgosm](https://github.com/pnorman/libpgosm): A custom extension for Postgres; lives in the `postgis` container

These additionally use the following:

* [iD](https://github.com/openstreetmap/iD): A JavaScript editor for OSM data.  Hosted in an iframe and makes calls to cgimap; lives in the `rails` container
* [osm-auth](https://github.com/osmlab/osm-auth): A pure-client OAuth layer used by iD for authentication; lives in the `rails` container
>>>>>>> c4f698f... README
