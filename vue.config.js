const { defineConfig } = require('@vue/cli-service')
// const path = require('path');
module.exports = defineConfig({
  transpileDependencies: true,
  devServer: {
    disableHostCheck: true
  }
  // publicPath: "https://restaurant-client-dot-if-c-01-project.df.r.appspot.com"
});

// module.exports = {
//   outputDir: path.resolve(__dirname, '../backend/public'),
//   devServer: {
//     proxy: {
//       '/': {
//         target: 'http://localhost:8081'
//       }
//     }
//   }
// }
