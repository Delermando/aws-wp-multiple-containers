run:
	docker run -d --name wordpressdb -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=wordpress mysql:5.7;
	docker run -d --name wordpress --link wordpressdb:mysql -p 8080:80 -v `pwd`/wordpress:/var/www/html pardeep/phpwithmysql:v2;
	
	
runTeste:
		docker run -d --name wordpress -p 8000:80 -v `pwd`/teste:/var/www/html pardeep/phpwithmysql:v2;

runMysql:
	docker run -d --name wordpressdb mysql:5.7;

downAll:
	docker kill `docker ps -a -q` && docker rm `docker ps -a -q`;

