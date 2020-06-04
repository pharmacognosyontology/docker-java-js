pipeline {
  agent {
    node {
      label 'master'
    }

  }
  def app
  stages {
    stage('Building image') {
      steps {
        app = docker.build($REGISTRY)
      }
    }
    stage('Push') {
      steps {
         docker.withRegistry('https://registry.hub.docker.com', 'dockerHub') {
          app.push('latest')
        }
      }
    }
  }
  environment {
    REGISTRY = 'phontology/java-js'
    registryCredential = 'bjonnhDocker'
  }
}
