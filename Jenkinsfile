pipeline {
    agent any

    stages {
        stage('Deploying AWS Stack') {
            steps {
                echo 'Building cloudformation stack'
                sh 'chmod u+x ./scripts/stack-build.sh'
                sh 'bash ./scripts/stack-build.sh'
            }
        }
    }
}