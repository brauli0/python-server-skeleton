#!/bin/bash

response=$(curl -s --header "Authorization: Token secret_token" http://localhost:5000/helloworld)
if [ "$response" == "\"Hello world!\"" ]; then
    echo "It WORKS!"
else
    echo "It DOESN'T work"
fi