# Supported tags and respective `Dockerfile` links
-	[`0.4.1`, `latest` (0.4.*/Dockerfile*)](https://github.com/lenaten/cayley/blob/master/Dockerfile)

# What is Cayley

[Cayley](https://github.com/google/cayley) is an open-source graph inspired by the graph database behind Freebase and Google's Knowledge Graph.

Its goal is to be a part of the developer's toolbox where Linked Data and graph-shaped data (semantic webs, social networks, etc) in general are concerned.

![logo](https://raw.githubusercontent.com/google/cayley/master/static/branding/cayley_side.png?raw=true)

# How to use this image

## run
- `docker run -it -p 64210:64210 lenaten/cayley`

## build and run
- `docker build -t lenaten/cayley .`
- `docker run -it -p 64210:64210 lenaten/cayley`

## custom config
- `docker run -it -p 64210:64210 -v <config_dir>:/etc/cayley/ cayley`
