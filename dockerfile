FROM java:8  

COPY . /var/www/java  

WORKDIR /var/www/java  

RUN javac HelloJava.java  

CMD ["java", "HelloJava"]  
