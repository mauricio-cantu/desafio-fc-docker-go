# Full Cycle course - Lightweight Docker image with Golang challenge

Create a Docker image that simply runs a "Hello World"-like script in Golang. The image must weigth less than 2MB.

### Resolution
Using Multi-stage build, my final image contains only the binary for the Go file. I also built the binary using `go build -ldflags "-w"` to reduce its final size by stripping out debugging information.

Docker Hub image: https://hub.docker.com/r/mauriciocantu/go
