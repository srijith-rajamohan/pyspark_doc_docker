FROM continuumio/anaconda3
MAINTAINER "Srijith Rajamohan"

RUN apt-get update && apt-get install -y libgtk2.0-dev && apt-get install -y ruby-full && apt-get install -y build-essential && apt-get install -y pandoc && \
    rm -rf /var/lib/apt/lists/*

RUN /opt/conda/bin/conda update -n base -c defaults conda && \
    /opt/conda/bin/conda install python && \
    /opt/conda/bin/conda install pip && \
    /opt/conda/bin/conda install anaconda-client && \
    pip install 'sphinx<3.1.0' mkdocs numpy pydata_sphinx_theme ipython nbsphinx numpydoc 'jinja2<3.0.0' && \
    pip install sphinx-serve sphinx-autobuild sphinx_plotly_directive


RUN ["mkdir", "notebooks"]

# Jupyter and Tensorboard ports
EXPOSE 8888 6006 8000 8080

# Store notebooks in this mounted directory
VOLUME /notebooks
ADD start.sh /
RUN chmod +x /start.sh
CMD ["/start.sh"]
