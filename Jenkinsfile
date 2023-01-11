pipeline {
	agent any
	environment{
		PATH = "/PATH_EMULATOR/bin:${env.PATH}"
	}
	stages {
		stage("Build") {
			steps {
				echo 'Building docker images...'
				sh '''
					docker info
					docker version
					docker compose version					
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