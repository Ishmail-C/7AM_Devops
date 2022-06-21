pipeline{
    agent any
        stages{
            stage('System details'){
                steps{
                    echo -e "\n \n"
                    echo -e "\t\t SYSTEM DETAILS"
                    echo -e "\n \n"
                    uname -a
                }
            }
            stage('Memory details'){
                steps{
                    echo -e "\n \n"
                    echo -e "\t\t  MEMORY DETAILS"
                    echo -e "\n \n"
                    free
                }
            }
            stage('CPU details'){
                steps{
                    echo -e "\n \n"
                    echo -e "\t\t CPU DETAILS"
                    echo -e "\n \n"
                    top
                }
            }
            stage('Disk details'){
                steps{
                    echo -e "\n \n"
                    echo -e "\t\t DISK DETAILS"
                    echo -e "\n \n"
                    df -h
                }
            }
        }
}
