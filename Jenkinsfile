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
    stages{

        stage('Build'){
            steps{
                sh 'echo this is Build'
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
}