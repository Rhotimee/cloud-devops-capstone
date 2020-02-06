pipeline {
  agent any
  stages {
    stage('Prepare') {
      steps {
        sh "apt-get install tidy"
      }
    }
    stage('build') {
      steps {
        sh 'echo Building...'
      }
    }
    stage('lint') {
      steps {
        sh 'tidy -q -e *.html'
      }
    }
  }
}