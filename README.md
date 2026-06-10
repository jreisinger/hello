# github-cicd

Test and run our code

```
go test ./...
go run .
```

Build and run docker image

```
docker build -t github-cicd .
docker run github-cicd
```

Create a release

```
$ git tag v0.0.1
$ git push origin v0.0.1 
```
