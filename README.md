# This is an implementation of Conway's Game of life in Rust and WebAssembly

### Added:

1.  Dockerfile and docker-compose for Node 14.21.2
2.  add config for Webpack `./www/webpack.config.js` to work with docker

```javascript
module.exports = {
  //...
  devServer: {
    host: '0.0.0.0',
  },
};
```

## RUN

Run the docker compose file

```
docker compose up --build

```

Navigate your Web browser to `http://localhost:8080/` and you can draw our own patterns by clicking on the cells and toggling their state.
