# Start from a core stack version
FROM jupyter/datascience-notebook:9f9e5ca8fe5a
# Install from requirements.txt file
COPY requirements.txt /tmp/
RUN conda install --yes --file /tmp/requirements.txt && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER