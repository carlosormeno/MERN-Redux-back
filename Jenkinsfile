pipeline {
	agent any
	stages {
		stage("Build") {
			steps {
				echo 'Building docker images...'
				sh '''
					docker-compose -f docker-compose.yml build
				'''
			}
		}
		stage("test") {
			steps {
				echo "Testing..."
			}
		}
		stage("DeployProd") {
			steps {
				echo 'Deploying to production...'
				sh '''
					docker-compose up -d --force-recreate bd
				''' 
			}
		}
	}
}