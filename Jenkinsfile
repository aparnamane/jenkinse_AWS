pipeline {
    agent any

    stages {
        stage('Deploying AWS Stack') {
            steps {
                echo 'Building cloudformation stack'
                sh 'cp -r ./scripts/ .'
                sh 'chmod u+x ./scripts/stack-build.sh'
                sh 'sh stack-build.sh'
            }
        }
    }
}