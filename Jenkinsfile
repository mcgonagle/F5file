node {
   stage('Preparation') { 
      // Get some code from a GitHub repository
      git 'https://github.com/mcgonagle/F5file.git'
   }
   stage('Testing') {
      //Run the tests
      echo 'ansible-lint'
      sh "/usr/local/bin/ansible-lint F5file.yml"
      echo 'ansible-review'
      sh "/usr/local/bin/ansible-review F5file.yml"
   }
   stage('Approval') {
      //Gate the process and require approval
      input 'Proceed?'
   }
   stage('Ansible Run') {
       //Ansible Playbook
       ansiblePlaybook(
         colorized: true, 
         inventory: 'hosts.ini', 
         playbook: 'F5file.yml', 
         sudoUser: null,
         extraVars: [
            username: 'dev',
            password: [value: 'devdev', hidden: true]
         ])
   }
   stage('ChatOps Notification') {
      slackSend channel: '#general', color: 'good', message: 'F5file Ran Successfully', teamDomain: 'uniopsteam', token: 'zkMRYtEXCEG3Q2FlUsS2Hjjv'
   }   
}
