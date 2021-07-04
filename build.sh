docker build -t php-redis-sample .
docker stop php-redis-sample || true && docker rm php-redis-sample || true
docker network create --driver bridge web || true
docker run -d --name php-redis-sample -p 8081:80 -v  ${PWD}/php.ini:/usr/local/etc/php/php.ini --network web php-redis-sample
