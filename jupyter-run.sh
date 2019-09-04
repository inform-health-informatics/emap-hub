echo 'This script will run an Jupyter Notebook on port 5888'

# you will need to provide information about how to connect
# from your local machine if you're running docker locally
# from azure or linode (with maybe a walkthrough for setting those up'

echo 'It generates a directory called analysis ready to receive your code'
echo 'This is independent of the docker container and so persists'
# TODO: make this option if the directory already exists
mkdir -p ./analysis/data/raw
mkdir -p ./analysis/data/tmp
mkdir -p ./analysis/code
mkdir -p ./analysis/notebooks
mkdir -p ./analysis/utils
mkdir -p ./analysis/figs

# A local notebook for JupyterLab
mkdir -p ./notebooks


# Default password: stanley
# To generate the password hash, run the following in IPython then copy the string below
# from notebook.auth import passwd
# password('stanley')

# You need to first run docker build -t emap-datascience:latest from this directory
# TODO: I seem to be repeating the user name in multiple places below
#       this might be only cosmetic; I am just trying to avoid using joyvan
docker run --rm -p 5888:8888 \
    --user=root \
    -e NB_USER=sharris9 \
    -w /home/$NB_USER \
    -v ${PWD}/analysis:"/home/sharris9" \
    -e CHOWN_HOME=yes \
    -e CHOWN_EXTRA_OPTS='-R' \
    emap-datascience \
    start.sh jupyter lab --NotebookApp.password='sha1:7f65058dd8b6:3415ba94890769c19b318f184ef41c2ee6e05955' \
    --LabApp.notebook_dir='sharris9' \
    --FileContentsManager.allow_hidden=True \
    


# End of file
