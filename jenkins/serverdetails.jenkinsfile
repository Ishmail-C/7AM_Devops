pipeline{
    agent any
        stages{
            stage('Build-System details'){
                steps{
		    sh '''
                    echo '"SYSTEM DETAILS"'
                    uname -a
		    '''
                }
            }
            stage('Build-Memory details'){
                steps{
		    sh '''
                    echo "MEMORY DETAILS"
                    free
		    '''
                }
            }
            stage('Build-CPU details'){
                steps{
		    sh '''
                    echo "CPU DETAILS"
                    lscpu
		    '''
                }
            }
            stage('Build-Disk details'){
                steps{
		    sh '''
                    echo "DISK DETAILS"
                    df -h | tail -5
		    '''
                }
            }
		 stage('Build-Process command'){
                steps{
                    sh '''
                    echo "Process command"
                    ps
                    '''
                }
            }

        }
}
