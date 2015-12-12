# gotiny Docker image

A tiny docker image for static go binaries. Includes `cacerts` usually required during SSL requests.

``` dockerfile
FROM centurylink/ca-certs
MAINTAINER Peter Etelej <peter@etelej.com>
```