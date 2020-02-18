pipeline {
  agent any
  stages {
    stage('Get Commit ID') {
      GIT_COMMIT_HASH = sh (script: "git log -n 1 --pretty=format:'%H'", returnStdout: true) 
      sh 'echo ${GIT_COMMIT_HASH}'
    }
    stage('build') {
      steps {
        sh 'echo Building...'
      }
    }
    stage('lint') {
      steps {
        sh 'tidy -q -e index.html'
      }
    }
    stage('Build Docker Image') {
      steps {
        sh 'docker build -t rhotimee/capstone-app .'
      }
    }
    stage('Push Docker Image') {
      steps {
        withDockerRegistry([url: "", credentialsId: "dockerhub"]) {
          sh 'docker image tag capstone-app rhotimee/capstone-app'
          sh 'docker push rhotimee/capstone-app'
        }
      }
    }
    stage('Deployment') {
      steps {
        withAWS(credentials: "aws") {
          sh 'kubectl apply -f deployments/deployment.yaml'
        }
      }
    }
    stage('Clean Up') {
      steps {
        sh 'docker system prune'
      }
    }
  }
}