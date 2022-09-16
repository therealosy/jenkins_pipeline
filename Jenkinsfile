pipeline {
  agent {
    label 'azure-agent'
  }

  stages {
    stage('Build and tag') {
      steps {
        echo 'Building Docker Image'
        sh 'docker build -t test_app:1.$BUILD_NUMBER .'
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
        sh 'docker run -d --name web_app_$BUILD_NUMBER -p 8080:8080 test_app:1.$BUILD_NUMBER'
      }
    }
    stage('Post Deployment Cleanup') {
      steps {
        echo 'Done.'
      }
    }
  }
}