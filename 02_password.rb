def signUp
  password = ""
  while password == ""
    puts "Please, enter a password: "
    print "> "
    require 'io/console'
    password = STDIN.noecho(&:gets).chomp
  end
  return password
end

def login(password)
  confirm_pass =""
  while password != confirm_pass
    puts "Please, confirm your password"
    print "> "
    require 'io/console'
    confirm_pass = STDIN.noecho(&:gets).chomp
  end
    return confirm_pass
end


def welcomeScreen
    puts "------------ Welcome to the NSA ------------"
end

def perform
  password = signUp
  puts "\n"
  confirm_password = login(password)
  puts "\n"
  welcomeScreen
end

perform
