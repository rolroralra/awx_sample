AWX_HOME=${AWX_HOME:-".."}

NGINX_KEY_FILE_PATH=${AWX_HOME}/config/nginx.key
NGINX_CERT_FILE_PATH=${AWX_HOME}/config/nginx.crt

openssl req -x509 -nodes -days 3650 -newkey rsa:2048 -keyout ${NGINX_KEY_FILE_PATH} -out ${NGINX_CERT_FILE_PATH} -subj "/C=KR/ST=DC/L=SEOUL/O='Hermes'/OU=''/CN=awxweb"
