words = ["fred", "racecar"]

def is_palendrome?(word)
  word == word.reverse 
end

words.each do |word|
 puts word
 if is_palendrome? word
    puts "It's a Palindrome! You are the greatest!"
 else
    puts "you lost sukka!"
 end
end