pipeline {
  agent {
    node {
      label 'master'
    }

  }
  stages {
    stage('Building image') {
      steps {
        docker.build($REGISTRY)
      }
    }
    stage('Push') {
      steps {
         docker.withRegistry('https://registry.hub.docker.com', 'dockerHub') {
          docker.image($REGISTRY).push('latest')
        }
      }
    }
  }
  environment {
    REGISTRY = 'phontology/java-js'
    registryCredential = 'bjonnhDocker'
  }
}
