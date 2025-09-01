* 🧹 1. Clean up the whole system (⚠️ deletes ALL containers, images, networks, and build cache) <br>
 docker system prune -a -f <br>

* 🛠️ 2. Build image from Dockerfile (run this inside the project directory where Dockerfile is located) <br>
docker build -t app-bind-mount-node:latest . <br>

* 🚀 3. Run a container from the image (expose container port to host) <br>
docker run -it --init -p 4000:4000 app-bind-mount-node:latest <br>

* 🔗 4. Run with Bind Mount (live sync between host and container) <br>
* 👉 Linux / macOS <br>
docker run -it --init -p 3002:3000 -v "$(pwd)":/developer/nodejs/node-bind-mount-project app-bind-mount-node:latest <br>

* 👉 Windows PowerShell <br>
docker run -it --init -p 3002:3000 -v ${PWD}:/developer/nodejs/node-bind-mount-project app-bind-mount-node:latest <br>

* ✅ Linux / macOS (bash, zsh, sh) <br>
docker run -it --init -p 3002:3000 -v "$(pwd)":/developer/nodejs/node-bind-mount-project app-bind-mount-node:latest <br>
$(pwd) expands to your current working directory.

* 👉 Windows CMD <br>
docker run -it --init -p 3002:3000 -v %cd%:/developer/nodejs/node-bind-mount-project app-bind-mount-node:latest
