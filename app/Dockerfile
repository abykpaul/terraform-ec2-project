FROM amazonlinux:2
RUN yum install -y httpd &&     echo '<h1>Deployed via Jenkins & Terraform</h1>' > /var/www/html/index.html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]