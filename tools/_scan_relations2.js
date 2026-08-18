// 精选缺失关联: 扫 d/detail/enhanced, 排除自引用和噪音词
const fs = require('fs');
const vm = require('vm');
const ctx = {};
vm.createContext(ctx);
vm.runInContext(fs.readFileSync('data/terms.js', 'utf8') + ';globalThis.__T=TERMS;', ctx);
const TERMS = ctx.__T;

const names = new Set();
TERMS.forEach(x => {
  names.add(x.t);
  if (x.children) x.children.forEach(c => names.add(c.t));
});

// 噪音词: 出现在文本里但不应作为关联(来源标注/语境词/非机制词)
const NOISE = new Set([
  '天赋', '武器属性', '祝福', '成就', '契约', '语音', '设置', '游戏操作',
  '武器', '敌人', '能力', '道具', '成就/语音', '机制', '社区', '官方',
  '术语', '文本', '玩家', '任务', '模式', '等级', '技能', '属性',
]);

// 语境词: 出现在文本但只是措辞, 不是真关联
const CONTEXT_NOISE = new Set([
  '闪避', // 常出现于"闪避其攻击"等对策
  '压制', // 常出现于"火力压制"语境
  '冲锋', // "变异人冲阵...打断变异人冲锋"
  '眩晕', // 对策用语
]);

const usable = [...names].filter(n => n.length >= 2);

function scan(text) {
  const found = new Set();
  if (!text) return found;
  for (const n of usable) {
    if (NOISE.has(n) || CONTEXT_NOISE.has(n)) continue;
    if (text.includes(n)) found.add(n);
  }
  return found;
}

const rows = [];
TERMS.forEach(x => {
  const process = (owner, texts, refs) => {
    const combined = texts.filter(Boolean).join(' ');
    const mentioned = scan(combined);
    const refSet = new Set(refs || []);
    const self = owner.includes('/') ? owner.split('/')[1] : owner;
    const missing = [...mentioned].filter(n => n !== owner && n !== self && !refSet.has(n));
    if (missing.length) rows.push({ owner, missing, refs: refs || [] });
  };
  // 不扫 src
  process(x.t, [x.d, x.intro], x.r);
  if (x.children) {
    x.children.forEach(c => {
      const full = x.t + '/' + c.t;
      process(full, [c.d, c.detail, c.enhanced], c.r);
    });
  }
});

// 按 owner 分组输出
rows.forEach(r => {
  console.log(`${r.owner}\t+${r.missing.join('、')}`);
});
console.log('\n共', rows.length, '个词条有候选');
