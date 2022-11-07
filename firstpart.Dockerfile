FROM debian:9

RUN apt-get update -yq \
&& apt-get install curl gnupg -yq \
&& curl -sL https://deb.nodesource.com/setup_10.x | bash \
&& apt-get install nodejs -yq \
&& apt-get clean -y

ADD . ../WIK-DPS-TP01/

WORKDIR /WIK-DPS-TP01

RUN npm install

CMD npm run start