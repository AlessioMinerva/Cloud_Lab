pipeline {
  agent {
    node {
      label 'jenkins-slave-agent'
    }

  }
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