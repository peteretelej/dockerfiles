# minio Server Docker Image


Basic Usage
```
docker run -d -p "9000:9000" -v "$PWD"/mydirectory:/directory etelej/minio minio /directory
```

Custom config file
```
docker run -d -p "9000:9000" -v "$PWD"/mydir:/dir -v "$PWD"/minio-config:/minio-config etelej/minio minio --config-dir /minio-config /dir
```
