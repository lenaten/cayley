# Supported tags and respective `Dockerfile` links
-	[`0.4.1`, `latest` (0.4.*/Dockerfile*)](https://github.com/lenaten/cayley/blob/master/Dockerfile)

# How to use this image

## run
- `docker run -it -p 64210:64210 lenaten/cayley`

## build and run
- `docker build -t lenaten/cayley .`
- `docker run -it -p 64210:64210 lenaten/cayley`

## custom config
- `docker run -it -p 64210:64210 -v <config_dir>:/etc/cayley/ cayley`
