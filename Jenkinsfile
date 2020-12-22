/* Requires the Docker Pipeline plugin */
pipeline {
    agent {
	docker { image 'myproj:latest' }
    }
    stage('Build') {
        steps {
            sh 'python --version'
        }
    }
}

