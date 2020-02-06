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
  }
}