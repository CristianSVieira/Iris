
export default {
  basePath: 'https://cristiansvieira.github.io/Iris',
  supportedLocales: {
  "en-US": ""
},
  entryPoints: {
    '': () => import('./main.server.mjs')
  },
};
