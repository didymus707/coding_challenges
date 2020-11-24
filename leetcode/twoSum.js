// const reducer = ((acc, val, i, arr) => {
//   let result = [];
//   result.push(arr[i]);
  
// })

const twoSum = ((nums, target) => {
  debugger
  let result = [];
  const copy = [...nums]
  nums.forEach((num, i) => {
    const rem = target - num;
    copy[i] = 'X';
    const find = copy.findIndex(val => val === rem);
    if (find !== -1) {
      result.push(i);
      result.push(find);
    } else {
      return;
    }
  });
  return result;
})

console.log(twoSum([3, 3], 6));