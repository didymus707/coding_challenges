# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/anagram

# check the length of the strings, if it's not even, return -1
# If you are on this next line by now, it means, you passed line 1, good for you
# split the main strings into equal length
# check through stings a against stings b(iteration)
# are there any common element in both?
# if yes, remove it from both stingss
# if no, go to the next item!

# solution was first done in js
# const anagram = s => {
#   if (s.length % 2 !== 0) return -1;
#   const half = s.length / 2;
#   const s1 = s.substring(0, half).split('');
#   const s2 = s.substring(half).split('');
#   let result = [];
#   s1.forEach(el => {
#     if (s2.includes(el)) {
#       s2.splice(s2.findIndex(e => e === el), 1);
#     }else result.push(el);
#   });

#   return result.length;
# }

# aaabbb
# ab
# abc
# mnop
# xyyx
# xaxbbbxx
# asdfjoieufoa
# fdhlvosfpafhalll
# mvdalvkiopaufl

def anagram(s)
  return -1 if s.length.odd?
  s1 = s[0...s.length / 2].split('')
  s2 = s[s.length / 2...s.length].split('')
  result = []
  s1.each do |el|
    if (s2.include?(el)) 
      s2.delete_at(s2.find_index(el))
    else 
      result << el 
    end
  end
  result.length
end

p anagram('fdhlvosfpafhalll');