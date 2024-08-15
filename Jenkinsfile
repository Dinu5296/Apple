pipeline {
    agent any
 
    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', credentialsId: 'b9604eb1-af53-44d3-8379-65193f210836',url: 'https://github.com/Dinu5296/Apple.git'
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
