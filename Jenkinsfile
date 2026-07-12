pipeline {
    agent {
        label 'Agent-1'
    }
    options{
        timeout(time: 30, unit: 'MINUTES') // to set the time to certain time
        disableConcurrentBuilds()  // to disable multiple build at a time
    }
        parameters {
        string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')

        text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some information about the person')

        booleanParam(name: 'TOGGLE', defaultValue: true, description: 'Toggle this value')

        choice(name: 'CHOICE', choices: ['One', 'Two', 'Three'], description: 'Pick something')

        password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Enter a password')
    }
    environment{
        Deplloye_to = 'Production'
        Greeting = 'Good Morning'
    }
    stages{

        stage('Build'){
            steps{
                sh 'echo this is Build'
                sh 'env'
            }
        }
        stage('Test'){
            steps{
                sh 'echo this is Test'
            }
        }
        stage('Deploye'){
            steps{
                sh 'echo this is Deploye'
            }
        }
        stage('execute shell script'){
            steps{
                sh """
                sudo su -
                chmod +x 11-functions.sh
                ./11-functions.sh
                """
            }
        }
        stage("Print parameters"){
            steps{

                echo "Hello ${params.PERSON}"

                echo "Biography: ${params.BIOGRAPHY}"

                echo "Toggle: ${params.TOGGLE}"

                echo "Choice: ${params.CHOICE}"

                echo "Password: ${params.PASSWORD}"  
            }
        }
    }
    post { 
        always { 
            echo 'I will always say Hello again!'
        }
        success {
            echo 'I will say hellow when success'
        }
        failure {
            echo 'i will say hello when failur'
        }
    }   
}