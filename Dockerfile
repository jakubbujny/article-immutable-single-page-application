FROM nginx:1.15.7

ADD index.html /usr/share/nginx/html/index.html

ADD script.js /usr/share/nginx/html/script.js

CMD sed -i "0,/#API_URL_TOKEN#/{s@#API_URL_TOKEN#@${API_URL}@}" /usr/share/nginx/html/index.html && nginx -g "daemon off;"