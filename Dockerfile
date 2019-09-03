# Start from a core stack version
FROM jupyter/datascience-notebook:2ce7c06a61a1

# Use your own config if you wish
COPY ./jupyter_notebook_config.py /home/steve/.jupyter/jupyter_notebook_config.py

# Additional Python requirements
# ==============================

# Install from requirements.txt file
COPY requirements.txt /tmp/
#RUN conda install --yes --file /tmp/requirements.txt && \
#    fix-permissions $CONDA_DIR && \
#    fix-permissions /home/$NB_USER


# Additional R requirements
# ===========================

RUN conda install -y -c r r-rstan r-bayesplot