def REGISTRY = 'phontology/java-js'
pipeline {
  agent {
    node {
      label 'master'
    }

  }
  stages {
    stage('Building image') {
      steps {
        script {
          def container = docker.build(REGISTRY)
        }
      }
    }
    stage('Push') {
      steps {
        script {
          docker.withRegistry('https://registry.hub.docker.com', 'dockerHub') {
            container.push('latest')
          }
        }
      }
    }
  }
}
