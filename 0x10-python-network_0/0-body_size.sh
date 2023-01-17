#!/bin/bash
#  a Bash script that takes in a URL, sends a request to that URL, and displays the size of the body of the response
curl -sI "$1" | awk '/Content-Length/ {print $2}'
#!/bin/bash
curl -sl "$1" | awk '/content-length/ {print $2}'
