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
    stage('Push') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'dockerHub', usernameVariable: 'HUB_USER', passwordVariable: 'HUB_TOKEN')]) {                      
          sh '''
            docker login -u $HUB_USER -p $HUB_TOKEN 
            docker image push $REGISTRY
          '''
        }
      }
    }
  }
  environment {
    REGISTRY = 'phontology/java-js'
    registryCredential = 'bjonnhDocker'
  }
}
