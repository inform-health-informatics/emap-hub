echo 'This script will run an Jupyter Notebook on port 5888'
# you will need to provide information about how to connect
# from your local machine if you're running docker locally
# from azure or linode (with maybe a walkthrough for setting those up'


mkdir -p ./analysis/data/raw
mkdir -p ./analysis/data/tmp
mkdir -p ./analysis/code
mkdir -p ./analysis/notebooks
mkdir -p ./analysis/utils
mkdir -p ./analysis/figs


# Default password: stanley
# To generate the password hash, run the following in IPython
# from notebook.auth import passwd
# password('stanley')

# You need to first run docker build -t emap-datascience:latest from this directory
docker run --rm -p 5888:8888 \
    -v "$PWD":/home/jovyan/work \
    emap-datascience \
    start.sh jupyter lab --NotebookApp.password='sha1:7f65058dd8b6:3415ba94890769c19b318f184ef41c2ee6e05955'

#    start.sh jupyter lab --LabApp.token='sha1:7f65058dd8b6:3415ba94890769c19b318f184ef41c2ee6e05955'
# End of file