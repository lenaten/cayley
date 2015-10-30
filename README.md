![logo](https://raw.githubusercontent.com/google/cayley/master/static/branding/cayley_side.png?raw=true)

# Supported tags and respective `Dockerfile` links
-	[`0.4.1`, `latest` (0.4.1/Dockerfile)](https://github.com/lenaten/cayley/blob/master/Dockerfile)

# What is Cayley

[Cayley](https://github.com/google/cayley) is an open-source graph inspired by the graph database behind Freebase and Google's Knowledge Graph.

Its goal is to be a part of the developer's toolbox where Linked Data and graph-shaped data (semantic webs, social networks, etc) in general are concerned.

# How to use this image

## Start a Cayley instance
Run `docker run -it -p 64210:64210 lenaten/cayley` and open the browser in `http://<docker_ip>:64210/`.
By default, cayley run with http server with leveldb as backend.

## Customize cayley config
Cayley config exsits in /etc/cayley/cayley.cfg with default and simple config. To replace the original config with your own, run the command below. Please remember to replace the `<config_dir>` with the absolute path of your config directory. 
- `docker run -it -p 64210:64210 -v <config_dir>:/etc/cayley/ cayley`
