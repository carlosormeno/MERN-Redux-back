pipeline {
	agent any
	stages {
		stage("verify tooling") {
      steps {
        sh '''
          docker version
          docker info
          docker compose version 
          curl --version
          jq --version
        '''
      }
    }
	stage('Prune Docker data') {
      steps {
        sh 'docker system prune -a --volumes -f'
      }
    }
    
		stage("Build") {
			steps {
				echo 'Building docker images...'
				sh '''
					docker compose build
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
					docker compose up -d --force-recreate bd
				''' 
			}
		}
	}
}