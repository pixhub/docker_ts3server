# docker_ts3server

This Dockerfile provides a Vocal Teamspeak3server

# Testing in local

You can use the image already built in DockerHub or building it yourself

## Building the image

First, download the repo :
```
git clone https://github.com/pixhub/docker_ts3server
docker build -t some-name docker_ts3server/
```

Then, just run the container binding de right Port :
```
docker run --rm --name some-name -p 9987:9987 -d some-name
```

The Teamspeak3 server is running. Now just take your credentials and admin token by typing :
```
docker logs some-name | grep "login|token"
```

You should get something like :
```
------------------------------------------------------------------
                      I M P O R T A N T                           
------------------------------------------------------------------
               Server Query Admin Account created                 
         loginname= "serveradmin", password= "p1Bc6Pqe"
------------------------------------------------------------------


------------------------------------------------------------------
                      I M P O R T A N T                           
------------------------------------------------------------------
      ServerAdmin privilege key created, please use it to gain 
      serveradmin rights for your virtualserver. please
      also check the doc/privilegekey_guide.txt for details.

       token=0SH0zwn4XLxJCsDQIhxLg2S+Vh3Wgq4lm4tROmCr
------------------------------------------------------------------
```

## Download the built image via DockerHub

First, pull the ts3server image :
```
docker pull pixhub/ts3server
```

Run the container :
```
docker run --rm --name some-name -p 9987:9987 -d pixhub/ts3server
```

The Teamspeak3 server is running. Now just take your credentials and admin token by typing :
```
docker logs some-name | grep "login|token"
```

You should get something like :
```
------------------------------------------------------------------
                      I M P O R T A N T                           
------------------------------------------------------------------
               Server Query Admin Account created                 
         loginname= "serveradmin", password= "p1Bc6Pqe"
------------------------------------------------------------------


------------------------------------------------------------------
                      I M P O R T A N T                           
------------------------------------------------------------------
      ServerAdmin privilege key created, please use it to gain 
      serveradmin rights for your virtualserver. please
      also check the doc/privilegekey_guide.txt for details.

       token=0SH0zwn4XLxJCsDQIhxLg2S+Vh3Wgq4lm4tROmCr
------------------------------------------------------------------
```

# Testing it

Download the Teampseak 3 Client through : https://www.teamspeak.com/en/downloads.html#client

Launch the app, and just enter the address : 127.0.0.1:9987

You're connected ! 

Best Regards,
pixhub.
