# docker for cayley

## run
- `docker run -it -p 64210:64210 lenaten/cayley`

## build and run
- `docker build -t lenaten/cayley .`
- `docker run -it -p 64210:64210 lenaten/cayley`

## custom config
- `docker run -it -p 64210:64210 -v <config_dir>:/etc/cayley/ cayley`
