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
    post {
        success {
	    slackSend channel: '#jenkins',
		      message: 'Hello, Build Successful'
	}
    }
}
