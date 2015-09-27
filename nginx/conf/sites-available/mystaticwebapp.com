server {
  # don't forget to tell on which port this server listens
  listen [::]:80;
  listen 80;

  # listen on the www host
  server_name www.mystaticwebapp.com;

  # and redirect to the non-www host (declared below)
  return 301 $scheme://example.com$request_uri;
}

server {
  listen [::]:80 deferred; # for Linux
  listen 80 deferred; # for Linux

  server_name mystaticwebapp.com;

  # Path for static files
  root /var/www/mystaticwebapp.com;

  #Specify a charset
  charset utf-8;

  # Custom 404 page
  error_page 404 /404.html;

  # Include the basic h5bp config set
  include h5bp/basic.conf;
}
