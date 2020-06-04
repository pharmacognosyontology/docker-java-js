pipeline {
  agent {
    node {
      label 'master'
    }

  }
  stages {
    stage('Building image') {
      steps {
        sh 'docker build -t $REGISTRY .'
      }
    }

  }
  environment {
    REGISTRY = 'phontology/java-js'
    registryCredential = 'bjonnhDocker'
  }
}