// 验证: 1) 数据引用完整性(与 demo 相同索引规则) 2) demo 渲染逻辑已包含修复
const fs = require('fs');
const vm = require('vm');

// 数据: 与 build_demo.py 同款提取逻辑
const termsSrc = fs.readFileSync('data/terms.js', 'utf8');
const m = termsSrc.match(/(const TERMS = \[.*?\];)/s);
if (!m) { console.log('FAIL: TERMS not found'); process.exit(1); }
const ctx = {};
vm.createContext(ctx);
vm.runInContext(m[1] + '\n;globalThis.__T = TERMS;', ctx);
const TERMS = ctx.__T;

// 复刻 demo 的 byName 构造(含裸名索引)
const byName = {};
TERMS.forEach(x => {
  byName[x.t] = x;
  if (x.children) x.children.forEach(c => {
    const full = x.t + "/" + c.t;
    byName[full] = Object.assign({ parent: x.t }, c);
    if (!byName[c.t]) byName[c.t] = byName[full];
  });
});

// 1) 引用完整性
const rows = [];
TERMS.forEach(x => {
  if (x.r) x.r.forEach(r => rows.push([x.t, r, 'top']));
  if (x.children) x.children.forEach(c => { if (c.r) c.r.forEach(r => rows.push([x.t + '/' + c.t, r, 'child'])); });
});
const dangling = rows.filter(([o, r]) => !byName[r]);
console.log('total r refs:', rows.length, '| dangling:', dangling.length);
dangling.forEach(([o, r]) => console.log('  DANGLING:', o, '->', r));

const bareToChild = rows.filter(([o, r]) => { const t = byName[r]; return t && t.parent; })
  .map(([o, r]) => `${o} -> ${r} (child of ${byName[r].parent})`);
console.log('\nbare-name refs resolving to child entries:', bareToChild.length);
bareToChild.forEach(x => console.log('  ', x));

// 2) demo 渲染逻辑检查
const html = fs.readFileSync('demo/index.html', 'utf8');
console.log('\n[demo/index.html]');
console.log('  child detail renders related block:', html.includes('${childRelated}'));
console.log('  childChips defined:', html.includes('const childChips'));
console.log('  bare-name index:', html.includes('if (!byName[c.t]) byName[c.t] = byName[full];'));
console.log('  selectTerm normalizes bare path:', html.includes('if (!path.includes("/")) path = x.parent + "/" + path;'));
console.log('  dangling chip title hints:', (html.match(/词条未收录/g) || []).length, 'occurrences');

// 3) 关键词条验证
const dianxing = TERMS.find(x => x.t === '电刑');
console.log('\n电刑 r:', JSON.stringify(dianxing.r), '->', byName['猎群之主'] ? 'OK' : 'MISSING');
const renxing = TERMS.find(x => x.t === '韧性削减');
console.log('韧性削减 r:', JSON.stringify(renxing.r), '->', byName['等离子炮手'] ? 'OK' : 'MISSING');
const elite = TERMS.find(x => x.t === '精英');
const paoshou = elite.children.find(c => c.t === '等离子炮手');
console.log('精英/等离子炮手 r:', JSON.stringify(paoshou.r), '->', byName['韧性削减'] ? 'OK' : 'MISSING');
const boss = TERMS.find(x => x.t === 'Boss');
const liequn = boss.children.find(c => c.t === '猎群之主');
console.log('Boss/猎群之主 r:', JSON.stringify(liequn.r), '->', byName['电刑'] ? 'OK' : 'MISSING');
const xukong = TERMS.find(x => x.t === '虚空盾');
console.log('虚空盾 r:', JSON.stringify(xukong.r), '->', byName['爆炸伤害'] ? 'OK' : 'MISSING');
const reliang = TERMS.find(x => x.t === '热量');
console.log('热量 r:', JSON.stringify(reliang.r), '->', byName['爆炸伤害'] ? 'OK' : 'MISSING');
