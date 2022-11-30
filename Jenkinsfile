pipeline {
	agent any
	stages{

		stage('clean_up'){
			
			steps{
			   catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE'){
			   sh ' docker image prune -a --force  '
			   sh ' docker container rm -f c1 '
			   }
			}
		}
		stage('image_build'){
			steps{
			   sh '''
			     
				docker image build -t v1 /home/ishmail/docker/ 
			   '''
			}
		}

		stage('image_tag'){
			steps{
			   sh '''
				docker image tag v1:latest vishngonela/v1:latest
			   '''
			}
		}

		stage('container_creation'){
			steps{
			   sh '''
				docker run -d --name c1 vishngonela/v1:latest bash
			   '''
			}
		}
}
}
