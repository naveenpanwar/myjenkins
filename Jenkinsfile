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
					env.MSG = sh(script: 'python dummy.py',returnStdout: true).trim()
					echo "${env.MSG}"
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
			slackSend channel: '#jenkins',
					  message: "${env.MSG}"
		}
	}
}
