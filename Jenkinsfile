/* Requires the Docker Pipeline plugin */
node('docker') {
    checkout scm
    stage('Build') {
        docker.image('python:3.6').inside {
            sh 'python --version'
        }
    }
}

