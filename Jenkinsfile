pipeline {
    stage('Deploying AWS Stack') {
        steps {
            sh 'cp ./scripts/stack-build.sh .'
            sh './stack-build.sh'
        }
    }
    
}