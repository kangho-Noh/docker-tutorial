#베이스 이미지를 명시해준다.
FROM node:10

WORKDIR /usr/src/app

# 종속성을 포함한 package.json
COPY package.json ./

# 추가적으로 필요한 파일들을 다운로드 받는다.
RUN npm install

# 모든 파일 copy
COPY ./ ./

#컨테이너 시작 시 실행될 명령어를 명시해준다.
CMD [ "node", "server.js" ]