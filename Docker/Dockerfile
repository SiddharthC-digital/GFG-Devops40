FROM amazonlinux
RUN yum install -y httpd vim python3
LABEL maintainer=sudhanshu
ENV debug=True
WORKDIR /var/www/html
COPY index.html .
EXPOSE 80
#CMD ["date"]
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D", "FOREGROUND"]