# On the command line type 
# bash build-jupyter.sh
docker build -t emap-datascience:latest --build-arg HTTP_PROXY=$HTTP_PROXY --build-arg HTTPS_PROXY=$HTTPS_PROXY --build-arg http_proxy=$http_proxy --build-arg https_proxy=$https_proxy .
