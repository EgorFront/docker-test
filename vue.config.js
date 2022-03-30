const { defineConfig } = require("@vue/cli-service");
// eslint-disable-next-line no-unused-vars
// const sharp = require("sharp");
// sharp("./src/assets/logo.png")
//   .rotate()
//   .resize(200)
//   .toBuffer()
//   .then(() => {
//     // console.log(data);
//   });

module.exports = defineConfig({
  transpileDependencies: true,
});
