def sayHello(first_name)
  puts "Bonjour, #{first_name}!"
end

def ask_first_name
puts "What's your name?"
print "> "
input = gets.chomp
return sayHello(input)
end

ask_first_name
