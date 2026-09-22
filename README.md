# devops-demo

## Getting started

Clone the repository:

```bash
git clone https://github.com/aie-devops/devops-demo.git
cd devops-demo
```

## Setting up your environment

You will need Java 21 and Maven 3.9+. Pick **one** of the two options below.

### Option 1: Install Java and Maven locally with SDKMAN

If you already have [SDKMAN](https://sdkman.io/) installed, install Java 21 and Maven with:

```bash
sdk install java 21.0.12.1-tem
sdk install maven
```

Then verify the versions:

```bash
java -version
mvn -version
```

### Option 2: Development Containers (no local installation of Java or Maven required)

This project ships with a [development container](https://containers.dev/) definition in `.devcontainer/`, so the
toolchain runs inside Docker instead of on your machine.

Prerequisites:

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) (running)
- [VS Code](https://code.visualstudio.com/) with the
  [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
  extension

Steps:

1. Open the cloned `devops-demo` folder in VS Code.
2. When prompted with *"Reopen in Container"*, accept it. (Otherwise, open the Command Palette and run
   **Dev Containers: Reopen in Container**.)
3. Wait for the first build to finish — it pulls the Java 21 image and warms the Maven cache.
4. Open a terminal inside VS Code (it is already running in the container) and start the app:

   ```bash
   mvn spring-boot:run
   ```

Port 8080 is forwarded automatically, so the app is reachable at
[http://localhost:8080](http://localhost:8080) from your host browser.

If you prefer the CLI over VS Code, you can use the
[devcontainer CLI](https://github.com/devcontainers/cli) instead:

```bash
npm install -g @devcontainers/cli
devcontainer up --workspace-folder .
devcontainer exec --workspace-folder . mvn spring-boot:run
```

## Running the app

The commands below work the same way on your host machine (Option 1) or inside the development container terminal (Option 2).

```bash
mvn spring-boot:run
```

The app starts on [http://localhost:8080](http://localhost:8080) by default.

Alternatively, build a JAR and run it:

```bash
mvn clean package
java -jar target/devops-demo-0.0.1-SNAPSHOT.jar
```

## Running tests

```bash
mvn test
```

## Working with tagged stages

This repo uses tags (e.g. `step-1-project-template`, `step-2-example`, ...) to mark different stages of the app as it evolves. To see all available tags:

```bash
git tag -l
```

To work from a specific stage, create a new branch starting at that tag:

```bash
git checkout -b my-branch-name step-1-project-template
```

This checks out the code exactly as it was at that tag and puts you on a new branch (`my-branch-name`) so you can make changes without affecting the tag or other branches.

