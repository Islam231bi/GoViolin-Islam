pipeline {
  environment {
    registry = "islam235/goviolin"
    registryCredential = 'dockerhub_id'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/Islam231bi/GoViolin-Islam.git'
      }
    }
    stage('Building image') {
      steps {
        script {
          try{
            dockerImage = docker.build registry + ":$BUILD_NUMBER"
          }
          catch(e) {
            echo "Docker Build Failed"
             throw e
          }
        }
      }
    }
    stage('Deploying image') {
      steps {
        script {
          docker.withRegistry('', registryCredential) {
            dockerImage.push()
          }
        }
      }
    }
    stage('Cleaning up') {
      steps {
        sh "docker rmi $registry:$BUILD_NUMBER"
      }
    }
  }
}
