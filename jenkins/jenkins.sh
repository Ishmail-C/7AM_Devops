

pipeline{
    agent any
        stages{
            stage('Hostname'){
                steps{
                    sh '''
                    echo -e "\n"
                    echo -e "Host name:"
                    echo -e "\n"
                    hostname
                    '''
                }

            stage('System details'){
                steps{
		    sh '''
                    echo -e "\n"
                    echo -e "SYSTEM DETAILS:"
                    echo -e "\n"
                    uname -a
		    '''
                }
            }
            stage('Memory details'){
                steps{
		    sh '''
                    echo -e "\n"
                    echo -e "MEMORY DETAILS:"
                    echo -e "\n"
                    free
		    '''
                }
            }
            stage('CPU details'){
                steps{
		    sh '''
                    echo -e "\n"
                    echo -e "CPU DETAILS:"
                    echo -e "\n"
                    lscpu
		    '''
                }
            }
            stage('Disk details'){
                steps{
		    sh '''
                    echo -e "\n"
                    echo -e "DISK DETAILS"
                    echo -e "\n"
                    df -h
		    '''
                }
            }
        }
}
