cd /

#create a directory and enter to the test2
mkdir test3

cd test3

# cloning a repository

git clone -b dev https://ansible-story@dev.azure.com/ansible-story/springbootapp_mumbai/_git/springbootapp_mumbai

cd springbootapp_mumbai/flight-tracking/

sudo mvn clean package

sudo docker build -t webservertest2 .

sudo docker run -d -p 8080:8080 webservertest2

cd ../FlightStatusServiceImpl/

sudo docker build -t appservertest2 .

sudo docker run -d -p 8083:8083 appservertest2

cd ../FlightsStatusResource/

sudo docker build -t apiservertest2 .

sudo docker run -d -p 8084:8084 apiservertest2
