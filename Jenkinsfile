pipeline {
    agent any

    stages {
        stage('Deploying AWS Stack') {
            steps {
                echo 'Building cloudformation stack'
                sh './scripts/stack.build.sh'
            }
        }
    }
}