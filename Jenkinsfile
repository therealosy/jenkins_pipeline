pipeline {
  agent {
    label 'azure-agent'
  }

  stages {
    stage('Build and tag') {
      steps {
        echo 'Building Docker Image'
        sh 'docker build -t test-app:$BUILD_NUMBER .'
      }
    }
    stage('Deploy and run') {
      when {
        expression {
          currentBuild.result == null || currentBuild.result == 'SUCCESS' 
        }
      }
      steps {
        echo 'Starting Docker Container'
        sh 'docker run -d --name web-app:$BUILD_NUMBER -p 8080:8080 test-app:$BUILD_NUMBER'
      }
    }
    stage('Post Deployment Cleanup') {
      steps {
        echo 'Done.'
      }
    }
  }
}