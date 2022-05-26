# GoViolin

GoViolin is a web app written in Go that helps with violin practice.

Currently hosted on Heroku at https://go-violin.herokuapp.com/

GoViolin allows practice over both 1 and 2 octaves.

Contains:
* Major Scales
* Harmonic and Melodic Minor scales
* Arpeggios
* A set of two part scale duet melodies by Franz Wohlfahrt


# Jenkins Pipeline:

Added Files:<br>
- Dockerfile: Contains the instructions and steps necessary for building the image of the app (I am using Heroku inside the container to run the web application).<br>
- Jenkinsfile: Contains the pipeline instructions for fetching the code, building the application from the Dockefile, Pushing the resulted image to Dockerhub, and cleaning any unnecessary layers.
- kubernetes manifests: deploy.yaml, service.yaml for deployment (test with minikube)

# Testing:
1 - Use the Jenkinsfile with jenkins server to test the multiple stages and make sure that the build process completed successfully.<br>
2- Go to my Dockerhub repo (https://hub.docker.com/repository/registry-1.docker.io/islam235/goviolin/general) to see the output image added to the repo.<br>
3- pull image from dockerhub and run with `-p 5000:5000` flag.<br>
4- the application should be up and running at http://localhost:5000/
