pipeline{
    agent {
        label 'node_1'
    }
    stages{
        stage('installing maven')
        {
            steps{
                sh ''' sudo apt update -y '''
                sh ''' sudo apt install maven -y'''
            }
        }
        stage('pulling file from git')
        {
            steps{
                git  'https://github.com/AnupDudhe/studentapp-ui.git'
            }
        }
        stage('genrating war file')
        {
            steps{
                sh '''sudo mvn clean package'''
            }
        }
        stage('installing tomcat 8')
        {
            steps{
                sh ''' sudo wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.99/bin/apache-tomcat-8.5.99.tar.gz'''
                sh ''' sudo tar -xvf apache-tomcat-8.5.99.tar.gz'''
            }

        }
        stage('moving war file to tomcat')
        {
            steps{
                sh ''' sudo mv ./target/*.war ./apache-tomcat-8.5.99/webapps/student.war'''
            }
        }
        stage('starting catalina file')
        {
            steps{
                sh ''' sudo ./apache-tomcat-8.5.99/bin/catalina.sh start'''
            }
        }
    }
}