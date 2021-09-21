#!/usr/bin/env groovy
//testing
pipeline {
    agent any 
    environment {
        //once you sign up for Docker hub, use that user_id here
        registry = "mounikamyla/shoppinglistclient"
        dockerImage = ''
        registryCredential = 'dockerhub_id'
    }
    
    stages {
        stage('Cloning Git') {
            steps {
                script{
                   checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'github', url: 'https://github.com/MounikaMyla/shoppingListClient.git']]]) 
                    // scmInfo = checkout scm
                    //echo "scm : ${scmInfo}"
                }
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
    stage('Uploading image to dockerhub'){
        steps{
            script{
                docker.withRegistry('', registryCredential){
                    dockerImage.push()
                
            }
        }
    }
    }
    }
}
