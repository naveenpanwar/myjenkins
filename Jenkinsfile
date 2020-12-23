/* Requires the Docker Pipeline plugin */
pipeline {
	environment {
		message = ':x:'
	}
    agent { docker { image 'myproj:latest' } }
    stages {
        stage('build') {
            steps {
				script {
					message = sh(script: 'python dummy.py',returnStdout: true)
				}
            }
        }
    }
    post {
		always {
			slackSend channel: '#jenkins',
					  message: 'Export started.'
		}
        success {
			slackSend channel: '#jenkins',
					  message: message
		}
		failure {
			slackSend channel: '#jenkins',
					  message: message
		}
	}
}
