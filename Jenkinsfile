pipeline {
    agent any
 
    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', credentialsId: 'cd7cef1b-12bc-43d1-a9fb-49e8ada2bf72',url: 'https://github.com/Dinu5296/Apple.git'
            }
        }
 
        stage('Terraform Init') {
            steps {
                sh 'terraform init -upgrade'
            }
        }
 
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }
 
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
