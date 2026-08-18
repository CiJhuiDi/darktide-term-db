// 体检: armor 数组是否被破坏(应为 [{breed,text},...] 结构)
const fs = require('fs');
const vm = require('vm');
const src = fs.readFileSync('data/terms.js', 'utf8');
const ctx = {};
vm.createContext(ctx);
try {
  vm.runInContext(src + ';globalThis.__T=TERMS;', ctx);
  const T = ctx.__T;
  console.log('TERMS 解析 OK');
  T.forEach(x => {
    if (x.children) x.children.forEach(c => {
      if (c.armor) {
        const isArr = Array.isArray(c.armor);
        const bad = isArr && c.armor.some(a => typeof a === 'string');
        console.log(`${x.t}/${c.t}: armor=${isArr ? 'array' : typeof c.armor}${bad ? ' *** 疑似破坏: ' + JSON.stringify(c.armor).slice(0, 120) : ''}`);
      }
    });
  });
} catch (e) {
  console.log('TERMS 解析失败:', e.message.slice(0, 200));
  // 定位失败位置
  const m = e.message.match(/position (\d+)/);
  if (m) {
    const pos = +m[1];
    console.log('error near:', JSON.stringify(src.slice(Math.max(0, pos - 80), pos + 80)));
  }
}
