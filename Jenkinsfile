pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'echo Building...'
      }
    }
    stage('lint') {
      steps {
        sh 'tidy -q -e app/index.html'
      }
    }
    stage('Build Docker Image') {
      steps {
        sh 'docker build -t capstone-app .'
      }
    }
    stage('Push Docker Image') {
      steps {
        withDockerRegistry(url: "https://registry.hub.docker.com", credentialsId: "dockerhub") {
          sh 'docker image tag capstone-app rhotimee/capstone-app'
          sh 'docker push rhotimee/capstone-app'
        }
      }
    }
  }
}