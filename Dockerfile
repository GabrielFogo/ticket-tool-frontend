# etapa 1: build da aplicação
FROM node:20-alpine AS builder

# diretorio de trabalho dentro do container
WORKDIR /app

# copia os arquivos de dependência
COPY package.json yarn.lock ./

# Iinstala as dependencias
RUN yarn install

# copia o restante da aplicação
COPY . .

# build da aplicação Vite
RUN yarn build

# inicia a aplicação
CMD ["yarn", "start"]
