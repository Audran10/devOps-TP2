FROM node:slim
WORKDIR /WIK-DPS-TP01CORRECTION-TS
COPY package*.json ./
RUN npm install
RUN useradd -m -r -u 1001 user
RUN chown -R user:user /WIK-DPS-TP01CORRECTION-TS
USER user
COPY . .
CMD node build/index.js
