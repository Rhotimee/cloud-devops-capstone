pipeline {
  agent { docker { image 'node:10' } }
  stages {
    stage('Prepare') {
      steps {
        sh "chown -R $USER:$GROUP ~/.npm"
        sh "chown -R $USER:$GROUP ~/.config"
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