# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/repeated-string

def repeatedString(s, n)
  len = s.size
  str = ''
  for i in 0...n
    j = i
    j = j - len if j >= len
    str += s[j]
  end
  str.split('').count('a')
end

p repeatedString('aba', 10)