Tested with these specs:
> Python 3.8.10

> pip 20.0.2

## First of all (you may can skip this step)

Execute `dependencies.sh` (check that you have permissions: `chmod 774 dependencies.sh`) or run in terminal:

```
apt update
apt upgrade
apt install python3
apt install python3-pip
apt install git
apt install python3.8-venv
apt install curl
```


# How to use
The important file of this repo is `create-project.sh` and you only have to download it to create a new project from this skeleton. Usage:

```
create-project.sh [name]
```

**Alternatively**, you can create a docker image from the `Dockerfile` and run it with the following commands:

```
docker build --tag myserver .
docker run -p 5000:5000 myserver
```

You can check that it works opening a new terminal and executing:

```
bin/test.sh
```

You can stop this container checking out the container ID in other terminal:

```
docker container ls
```

And stopping it:

```
docker container stop [container-id]
```

## Run this server on your own

Check that you have permissions to execute `bin/run.sh` or execute in terminal:
```
chmod 774 bin/run.sh
```

Run:
```
bin/run.sh
```

## Check if it works

In a new terminal, run:
```
bin/test.sh
```

Or send a GET request to http://localhost:5000/helloworld with headers:

| Key | Value |
| --- | --- |
| Authorization | Token secret_token |

Response should be:

> "Hello world!"

To stop the server press `CTRL+C`

---

## Under the hood:

Create an environment (first time only):
```
python3 -m venv env
```
Activate the environment:
```
source env/bin/activate
```
Install dependencies (first time only):
```
pip3 install -r requirements.txt
```
Run server:
```
python3 src/server.py
```

### Stop the server

Press CTRL+C and execute:
```
deactivate
```