pipeline {
  agent { docker { image 'node:6.3' } }
  stages {
    stage('Prepare') {
      steps {
        sh "curl -o- -L https://yarnpkg.com/install.sh | bash"
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