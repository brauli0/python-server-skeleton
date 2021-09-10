# How to use
The important file of this repo is `create-project.sh` and you only have to download it to create a new project from this skeleton. Usage:

```
create-project.sh [name]
```

## Run this server

Tested with these specs:
> macOS Big Sur 11.5.2 (20G95)

> Python 3.9.7

> pip 21.2.4

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