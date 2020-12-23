/* Requires the Docker Pipeline plugin */
pipeline {
    agent { docker { image 'myproj:latest' } }
    stages {
        stage('build') {
            steps {
				script {
					def MSG = sh(script: 'python dummy.py',returnStdout: true)
				}
            }
        }
    }
    post {
        success {
			slackSend channel: '#jenkins',
					  message: 'Hello, Build Successful'
		}
		failure {
			script {
				echo MSG
			}
			slackSend channel: '#jenkins',
					  message: "${env.MSG}"
		}
	}
}
