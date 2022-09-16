pipeline {
  agent {
    label 'azure-agent'
  }

  stages {
    stage('Pull') {
      steps {
        echo 'Cloning from remote repo'
        
      }
    }
    stage('Build') {
      steps {
        echo 'Running docker build'
      }
    }
    stage('Deploy') {
      steps {
         echo 'Starting docker container'
      }
    }
  }
}