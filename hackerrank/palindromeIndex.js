const palindromeIndex = s => {
  if (s === [...s].reverse().join("")) return -1
  const len = s.length;
  let result, half;
  half = len % 2 === 0 ? len / 2 : Math.floor(len / 2);
  for (let i = 0; i < half; i++) {
    if (s[i] !== s[len - (i + 1)]) {
      const checkL = remRev(s, i);
      const checkR = remRev(s, len - (i + 1));
      if (checkL) result =  i;
      if (checkR) result = len - (i + 1);
      break
    }
  }
  return result
}

const remRev = (str, index) => {
  const remEl = [...str];
  remEl.splice(index, 1);
  const rev = [...remEl].reverse().join("");
  return remEl.join("") === rev;
};


console.log(palindromeIndex('hgygsvlfcwnswtuhmyaljkqlqjjqlqkjlaymhutwsnwcwflvsgygh'));