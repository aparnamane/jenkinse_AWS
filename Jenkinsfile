pipeline {
    agent any

    stages {
        stage('Deploying AWS Stack') {
            steps {
                echo 'Building cloudformation stack'
                sh 'aws cloudformation create-stack --stack-name test1stack --template-body file://template1.yaml --region ap-southeast-2'
            }
        }
    }
}