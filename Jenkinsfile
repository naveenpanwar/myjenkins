/* Requires the Docker Pipeline plugin */
pipeline {
    agent { docker { image 'myproj:latest' } }
    stages {
        stage('build') {
            steps {
                sh 'python dummy.py'
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
