words = ["fred", "racecar"]

def is_palendrome?(word)
  word == word.reverse 
end

def print_palindrome_message palendrome_status, options = {}
  success_message = options.fetch(:success) { "Yup" }
 
  failure_message = options[:failure]
  
  failure_message = failure.message
  
  if palendrome_status
    puts success_message
  else
    puts failure_message
  end
end

result = is_palendrome?("fred")
print_palendrome_message result, failure: "No sir!", success: "Yes sir!"
