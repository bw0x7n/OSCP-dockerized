# Adobe ColdFusion directory Traversal : CVE-2010-2861


./prepare.sh
Once you have the CF binary and patches in the /install/build direcotry you can build the Docker container:

docker build -t cf8 .
And run it with:

docker run -d -p 8880:80 -v /var/www:/var/www cf8
