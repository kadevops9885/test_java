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
         stage('create aws ec2') {
            steps {
                withCredentials([gitUsernamePassword(credentialsId: 'my-aws-credentials', gitToolName: 'Default')]) {
                    // Your steps that require credentials go here
                    // For example, you can clone a Git repository using the stored credentials.
                }
			}
		}
        stage('Navigate to Terraform Directory') {
            steps {
                // Change directory to the path where your Terraform configuration files are located
                dir('test_java') {
               }
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
            

        
    

    
