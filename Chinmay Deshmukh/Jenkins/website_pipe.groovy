pipeline {
 agent any
 stages {
 stage('Installing apache') {
 steps {
 sh ''' sudo apt-get update'''
 sh ''' sudo apt-get install apache2 -y'''
 sh ''' sudo systemctl start apache2'''
 }
 }
 stage('Downloding Template') {
 steps {
 sh '''
 sudo wget https://www.free-css.com/assets/files/free-css-templates/download/page296/little-fashion.zip
 '''
 sh ''' sudo apt-get install unzip -y'''
 sh ''' sudo unzip little-fashion.zip '''
 sh ''' sudo mv ./2127_little_fashion/* /var/www/html/'''
 }
 }
 }
 }