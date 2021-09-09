# Run this server

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
python3 server.py
```

Check if it works:

Send get request to http://localhost:5000/helloworld with headers:

```
Authorization: Token [secret_token]
```

Response should be:

>"Hello world!"

### Stop the server

Press CTRL+C and execute:
```
deactivate
```