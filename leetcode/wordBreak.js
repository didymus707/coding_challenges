// https://leetcode.com/problems/word-break/
// const wordBreak = ((s, wordDict) => {
//   let arr = s.split();
//   wordDict.forEach(`${ele}`ment => {
//     const len = element.length;
//     let word = arr[0].substr(0, len);
//     arr = [arr[0].replace(word, '')];
//   });
//   // return arr.join().length === 0;
//   return arr;
// })

const wordBreak = ((s, worDict) => {
  let res = s;
  worDict.forEach(ele => {
    const len = ele.length;
    res = res.split(`${ele}`).join('');
  })
  return res.length === 0;
})


console.log(wordBreak('applepenapple', ['apple', 'pen']))
// const word = 'leetcode';
// console.log(word.includes('leet'));