pipeline {
  agent any
  stages {
    stage('git') {
      agent {
        node {
          label 'Docker-Internal'
        }

      }
      steps {
        git(url: 'https://github.com/AlessioMinerva/Cloud_Lab', branch: 'main')
      }
    }

  }
}