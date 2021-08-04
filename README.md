
## NOTES

The docker container image is assumed to be sphinx:tag here. You build this image using

 docker build -t sphinx:tag .
	
Make sure the PySpark doc is in $SPARK_DOCS/python/docs and this is mapped to folder /notebooks in the container.

Run it using the docker command

 docker run -it -p 5000:8080 -v $SPARK_DOCS/python/docs:/notebooks sphinx:3.0

This will run sphinx-autobuild (port 8000 in container) and sphinx-serve (port 8080 in container) in the container. The built documents are served on the port 5000 on the host machine. Access this at IP:5000

