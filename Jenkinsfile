pipeline {
  agent any

  parameters {
    string(name: 'APP_VERSION', defaultValue: '', description: '')
    string(name: 'COMPONENT', defaultValue: '', description: '')
  }

  options {
    ansiColor('xterm')
  }

  stages {

    stage('Deploy') {
      steps {
        sh '''
          aws ec2 describe-instances --filters Name=tag:Name,Values=${COMPONENT}-prod Name=instance-state-name,Values=running --query 'Reservations[*].Instances[*].PrivateIpAddress' --output text >/tmp/ips 
          ansible-playbook -i /tmp/ips roboshop.yml -e ENV=prod -e ROLE_NAME=${COMPONENT} -e APP_VERSION=${APP_VERSION}
        '''
      }
    }

  }

}