
export default {
  bootstrap: () => import('./main.server.mjs').then(m => m.default),
  inlineCriticalCss: true,
  baseHref: 'https://cristiansvieira.github.io/Iris/',
  locale: undefined,
  routes: [
  {
    "renderMode": 2,
    "route": "/Iris"
  }
],
  entryPointToBrowserMapping: undefined,
  assets: {
    'index.csr.html': {size: 1028, hash: '6bae402fd12e50ef49c9f0272682df2397dbf6f4af30c83895927e2e382bcd43', text: () => import('./assets-chunks/index_csr_html.mjs').then(m => m.default)},
    'index.server.html': {size: 1037, hash: 'e35efb3a01b4d293f7b7d81e4261836fc76123cd921862b4f745b218b18f2c8a', text: () => import('./assets-chunks/index_server_html.mjs').then(m => m.default)},
    'index.html': {size: 10524, hash: '4694559f038b7decbd3e7859167f6353e7ac9f889f20ae53e96ae9871dca9750', text: () => import('./assets-chunks/index_html.mjs').then(m => m.default)},
    'styles-RUTLJ5EM.css': {size: 4074, hash: 'a80kY9oQyLU', text: () => import('./assets-chunks/styles-RUTLJ5EM_css.mjs').then(m => m.default)}
  },
};
