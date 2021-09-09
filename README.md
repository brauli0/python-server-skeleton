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