FROM rust:1.66.0 as build
WORKDIR /usr/src/app
COPY . . 
# RUN cargo install cargo-generate
RUN curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh
RUN wasm-pack build


FROM node:14.21.2-alpine
WORKDIR /app
COPY . .
COPY --from=build /usr/src/app/pkg /app/pkg
WORKDIR /app/www
RUN npm install
CMD npm run start
EXPOSE 8080