# Adobe ColdFusion directory Traversal : CVE-2010-2861


./prepare.sh
Once you have the CF binary and patches in the /install/build direcotry you can build the Docker container:

docker build -t cf8 .
And run it with:

docker run -d -p 8880:80 -v /var/www:/var/www cf8

##
The admin password for the coldfusion server is Adm1n$


You can't access the cf-admin interface from the web. You need to use the CF Admin API


You can learn more about the coldfusion installation by looking in ./build/install/installer.profile
