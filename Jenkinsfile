/* Requires the Docker Pipeline plugin */
pipeline {
    agent { docker { image 'myproj:latest' } }
    stages {
        stage('build') {
            steps {
                sh 'python --version'
            }
        }
    }
}
