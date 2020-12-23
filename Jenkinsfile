/* Requires the Docker Pipeline plugin */
pipeline {
    agent { docker { image 'myproj:latest' } }
    stages {
        stage('build') {
            steps {
				mac = sh(script: 'python dummy.py',returnStdout: true).trim()
            }
        }
    }
    post {
        success {
			slackSend channel: '#jenkins',
					  message: 'Hello, Build Successful'
		}
		failure {
			slackSend channel: '#jenkins',
					  message: mac
		}
	}
}
