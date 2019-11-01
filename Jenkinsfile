
pipeline {
    agent any
    stages {
        stage('checkout repo') {
            steps {
                git branch: "master",
                //url: 'https://github.com/tolaose/Jenkins.git'
            }
        }
        stage('terraform init') {
            steps {
                echo 'Initializing'
                sh 'terraform init'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'terraform plan'
                script {
                   timeout(time: 10, unit: 'MINUTES') {
                      input(id: "Deploy Gate", message: "Deploy ${params.project_name}?", ok: 'Deploy)
                   }
                }
             }
        }
        stage('terraform apply') {
            steps {
                sh 'terraform apply'
            }
        }
        stage('Want to Destroy Resources??') {
            steps {
                script {
                   timeout(time: 10, unit: 'MINUTES') {
                      input(id: "Deploy Gate", message: "Want to Destroy ${params.projectname}?" ok: 'Destory'??)
