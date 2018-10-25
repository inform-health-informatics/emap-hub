FROM jupyter/datascience-notebook:latest
USER root

# would be nice to set our own user name
COPY jupyter_notebook_config.py /user/jovyan/.jupyter/jupyter_notebook_config.py

USER $NB_UID
