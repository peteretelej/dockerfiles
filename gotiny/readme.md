# gotiny Docker image

A __tiny docker [image](https://hub.docker.com/r/etelej/gotiny/) for static go binaries__. 


Includes `ca-certs` usually required during secure requests (e.g `http.Get(https://dev.etelej.com)` ).The __ca-certs__ fix this error:
```
x509: failed to load system roots and no roots provided
```


Dockerfile:
``` dockerfile
FROM centurylink/ca-certs
MAINTAINER Peter Etelej <peter@etelej.com>
```


## Using the image
Assuming static binary application (_app_) in current working directory.
```
docker run --rm -it -v "$PWD"/app:/app etelej/gotiny ./app
```
