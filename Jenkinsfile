pipeline {
  agent any
  stages {
    stage('Stage1') {
      parallel {
        stage('Stage1') {
          steps {
            sh 'echo "Stage1"'
          }
        }

        stage('Parallel_02') {
          steps {
            sh 'echo "Parallel stage1"'
          }
        }

        stage('Parallel03') {
          steps {
            sh 'for i in {1..10}; do echo "Hello $i"&& sleep 1; done'
          }
        }

      }
    }

    stage('Stage2') {
      steps {
        sh 'echo "Hello Stage2"'
      }
    }

    stage('Stage3') {
      steps {
        sh 'echo "Stage completed"'
      }
    }

  }
}