# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/repeated-string

def repeatedString(s, n)
  len = s.size
  quo = n / len
  freq_of_a_in_s = s.split('').count('a')
  rem = n % len
  freq_of_a_in_rem = s[0...rem].split('').count('a')
  # formula = quo * freq_of_a_in_s + freq_of_a_in_rem
  str = quo * freq_of_a_in_s + freq_of_a_in_rem
  str
end

p repeatedString('aba', 10)