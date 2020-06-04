pipeline {
  agent {
    node {
      label 'master'
    }

  }
  stages {
    stage('Building image') {
      steps {
        sh 'docker build registry + ":$BUILD_NUMBER"'
      }
    }

  }
  environment {
    registry = 'phontology/java-js'
    registryCredential = 'bjonnhDocker'
  }
}