/* Requires the Docker Pipeline plugin */
pipeline {
	environment {
		MSG = ""
	}
    agent { docker { image 'myproj:latest' } }
    stages {
        stage('build') {
            steps {
				env.MSG = sh(script: 'python dummy.py',returnStdout: true).trim()
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
					  message: echo "${env.MSG}"
		}
	}
}
