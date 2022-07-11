pipeline {
	agent any
	stages{

		stage('clean_up'){
			steps{
			   sh ' docker image prune -a --force --filter "until=240h" '
			   sh ' docker container rm -f c1
			}
		}
		stage('image_build'){
			steps{
			   sh '''
			     
				docker image build -t v1 /root/docker/ 
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

		stage('container_creation')
			steps{
			   sh '''
				docker run -d --name c1 vishngonela/v1:latest bash
			   '''
			}
}
}
