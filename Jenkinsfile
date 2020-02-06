pipeline {
  agent { docker { image 'node:latest' } }
  stages {
    stage('Prepare') {
      steps {
        sh "npm install -g yarn"
        sh "yarn install"
      }
    }
    stage('build') {
      steps {
        sh 'yarn build'
      }
    }
    stage('test') {
      steps {
        sh 'yarn test'
      }
    }
  }
}