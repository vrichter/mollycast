### Mollycast

A combination of mopidy, jellyfin and snapcast for as media server and multiroom streaming solution.

## Build and run

Look into docker-compose.yml to set the volume bindings as needed.

```
docker-compose build
docker-compose up
```

## Services

* http://localhost:8096/ for jellyfin
* http://localhost:6680/iris/ for mopidy iris webclient
* http://localhost:6680/party/ for mopidy party client
* http://localhost:1780/ for snapcast webclient
