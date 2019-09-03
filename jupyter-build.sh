# On the command line type 
# bash build-jupyter.sh
docker build -t emap-datascience:latest \ 
    --build-arg HTTP_PROXY \
    --build-arg HTTPS_PROXY \    
    --build-arg http_proxy \
    --build-arg https_proxy \
    .