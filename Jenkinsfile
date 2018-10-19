pipeline {
    agent any

    stages {
        stage('Deploying AWS Stack') {
            steps {
                echo 'Building cloudformation stack'
                sh 'cp ./scripts/stack-build.sh .'
                sh 'cp ./scripts/parameters .'
                sh 'chmod u+x stack-build.sh'
                sh 'sh stack-build.sh'
            }
        }
    }
}