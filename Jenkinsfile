pipeline {
  agent { docker { image 'node:6.3' } }
  stages {
    stage('Prepare') {
      steps {
        sh "sudo npm install -g yarn"
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