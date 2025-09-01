* 🧹 1. Clean up the whole system (⚠️ deletes ALL containers, images, networks, and build cache)
docker system prune -a -f

* 🛠️ 2. Build image from Dockerfile (run this inside the project directory where Dockerfile is located)
docker build -t app-bind-mount-node:latest .

* 🚀 3. Run a container from the image (expose container port to host)
docker run -it --init -p 4000:4000 app-bind-mount-node:latest

* 🔗 4. Run with Bind Mount (live sync between host and container)
* 👉 Linux / macOS
docker run -it --init -p 3002:3000 -v "$(pwd)":/developer/nodejs/node-bind-mount-project app-bind-mount-node:latest

* 👉 Windows PowerShell
docker run -it --init -p 3002:3000 -v ${PWD}:/developer/nodejs/node-bind-mount-project app-bind-mount-node:latest

✅ Linux / macOS (bash, zsh, sh)
docker run -it --init -p 3002:3000 -v "$(pwd)":/developer/nodejs/node-bind-mount-project app-bind-mount-node:latest
$(pwd) expands to your current working directory.

* 👉 Windows CMD
docker run -it --init -p 3002:3000 -v %cd%:/developer/nodejs/node-bind-mount-project app-bind-mount-node:latest
