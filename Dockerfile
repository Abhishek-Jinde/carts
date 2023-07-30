FROM schoolofdevops/carts-maven:3.9

WORKDIR /opt/carts

COPY . .

RUN mvn package -D skipTests \
    && mv carts.jar /run/carts.jr

EXPOSE 80

CMD java -jar /run/carts.jar --port=80
