pipeline {
    agent any 
    environment {
        //once you sign up for Docker hub, use that user_id here
        registry = "mounikamyla/shoppinglistclient"
        dockerImage = ''
    }
    
    stages {
        stage('Cloning Git') {
            steps {
                checkout(checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/MounikaMyla/shoppingListClient.git']]]))       
            }
        }
    
    // Building Docker images
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry
        }
      }
    }
}
