/* Requires the Docker Pipeline plugin */
pipeline {
	environment {
		MSG = ""
	}
    agent { docker { image 'myproj:latest' } }
    stages {
        stage('build') {
            steps {
				script {
					MSG = sh(script: 'python dummy.py',returnStdout: true)
				}
            }
        }
    }
    post {
		always {
			slackSend channel: '#jenkins',
					  message: printNote()
		}
        success {
			slackSend channel: '#jenkins',
					  message: 'Hello, Build Successful'
		}
		failure {
			slackSend channel: '#jenkins',
					  message: printNote()
		}
	}
}

void printNote() {
	echo MSG
}
