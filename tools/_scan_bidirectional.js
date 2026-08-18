// 扫描单向关联: A->B 有, 但 B 的 r 里没有 A(双向缺失)
const fs = require('fs');
const vm = require('vm');
const ctx = {};
vm.createContext(ctx);
vm.runInContext(fs.readFileSync('data/terms.js', 'utf8') + ';globalThis.__T=TERMS;', ctx);
const TERMS = ctx.__T;

// 索引: full path -> entry; bare name -> entry(子词条裸名)
const byFull = {};
const byBare = {};
TERMS.forEach(x => {
  byFull[x.t] = x;
  byBare[x.t] = x;
  if (x.children) x.children.forEach(c => {
    const full = x.t + '/' + c.t;
    byFull[full] = Object.assign({ parent: x.t }, c);
    if (!byBare[c.t]) byBare[c.t] = byFull[full];
  });
});

// 收集所有引用 A -> B
const refs = []; // {from, fromPath, to}
TERMS.forEach(x => {
  (x.r || []).forEach(r => refs.push({ from: x.t, fromPath: x.t, to: r }));
  if (x.children) x.children.forEach(c => {
    const full = x.t + '/' + c.t;
    (c.r || []).forEach(r => refs.push({ from: c.t, fromPath: full, to: r }));
  });
});

// 对每个引用检查反向
const missing = [];
refs.forEach(ref => {
  const target = byBare[ref.to];
  if (!target) return; // 悬空引用(之前已查过为0)
  // target 的 r 里有没有 ref.from(裸名)
  const targetRefs = (target.r || []);
  // 如果 target 是子词条(byFull 里), 用完整路径语义检查; 但 r 都是裸名
  const hasReverse = targetRefs.includes(ref.from);
  if (!hasReverse) {
    missing.push({ from: ref.fromPath, to: ref.to });
  }
});

// 去重输出
const seen = new Set();
missing.forEach(m => {
  const key = m.from + ' -> ' + m.to;
  if (!seen.has(key)) {
    seen.add(key);
    console.log(key);
  }
});
console.log('\n共', seen.size, '处单向关联(缺反向)');
