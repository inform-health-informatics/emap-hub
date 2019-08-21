# Start from a core stack version
FROM jupyter/datascience-notebook:2ce7c06a61a1

COPY ./jupyter_notebook_config.py /home/steve/.jupyter/jupyter_notebook_config.py
# COPY ./mykey.key /home/

# hard coding a default password
# RUN jupyter notebook --generate-config
# RUN echo "c.NotebookApp.password='sha1:7f65058dd8b6:3415ba94890769c19b318f184ef41c2ee6e05955'">>/root/.jupyter/jupyter_notebook_config.py

# Install from requirements.txt file
#COPY requirements.txt /tmp/
#RUN conda install --yes --file /tmp/requirements.txt && \
#    fix-permissions $CONDA_DIR && \
#    fix-permissions /home/$NB_USER