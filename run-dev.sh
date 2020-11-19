 set -ex
 echo "Running swicus on dev."
 docker-compose down
 PRV_KEY=$(cat ~/.ssh/id_rsa)
 docker-compose build --build-arg SSH_PRIVATE_KEY="$PRV_KEY"
 docker-compose up