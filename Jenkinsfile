pipeline{
    agent any

    tools {
         maven 'maven'
         jdk 'java'
	 terraform 'terraform'
    }

    stages{
        stage('checkout'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'github access', url: 'https://github.com/sreenivas449/java-hello-world-with-maven.git']]])
            }
        }
        stage('build'){
            steps{
               sh 'mvn clean install'  // Build the code using Maven
            }
        }
        
      
        stage('Terraform Init') {
            steps {
               sh 'terraform init'
            }
        }
      
        stage('Terraform Apply') {
            steps {
               sh 'terraform apply -auto-approve'
            }
        }
    }
  
}  
            

        
    

    
