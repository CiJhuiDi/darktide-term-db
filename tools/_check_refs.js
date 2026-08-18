// 精确检查: 加载 terms.js, 验证所有 r[] 引用
const fs = require('fs');
const vm = require('vm');
const src = fs.readFileSync('data/terms.js', 'utf8');
const ctx = {};
vm.createContext(ctx);
vm.runInContext(src + '\n;globalThis.__T = TERMS;', ctx);
const TERMS = ctx.__T;

const byName = {};
TERMS.forEach(x => {
  byName[x.t] = x;
  if (x.children) x.children.forEach(c => byName[x.t + '/' + c.t] = c);
});
const allNames = new Set(Object.keys(byName));
const topNames = new Set(TERMS.map(x => x.t));

// 收集所有 r 引用
const rows = [];
TERMS.forEach(x => {
  if (x.r && x.r.length) x.r.forEach(r => rows.push([x.t, r, 'top']));
  if (x.children) x.children.forEach(c => {
    if (c.r && c.r.length) c.r.forEach(r => rows.push([x.t + '/' + c.t, r, 'child']));
  });
});

console.log('== 悬空引用(指向不存在的词条) ==');
let n = 0;
rows.forEach(([owner, ref, kind]) => {
  if (!allNames.has(ref)) {
    console.log(`  ${owner} -> "${ref}"  (${kind})`);
    n++;
  }
});
console.log('total dangling:', n);

console.log();
console.log('== 子词条带 r 的(详情页是否渲染?) ==');
rows.filter(([o, r, k]) => k === 'child').forEach(([o, r]) => console.log(`  ${o} -> ${r}`));
