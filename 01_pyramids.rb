#def half_pyramid
#  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
#  input = gets.chomp.to_i
#  while input > 0
#    input -= 1
#    puts "#" * input
#    end
#end

#def full_pyramid
#  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
#  etages = gets.chomp.to_i
#  brique = 1
#  etages.times do
#    (etages-1).times do
#      print " "
#    end
#    brique.times do
#      print "#"
#    end
#  puts "\n"
#  etages -= 1
#  brique += 2
#  end
#end


def wtf_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  etages = gets.chomp.to_i
  first_part = (etages / 2) + 1
  second_part = etages / 2

  # Check if the input is odd
  if etages % 2 == 0
    puts "/!\\ Tu dois rentrer un nombre impair! /!\\"
  end

  # Start of the first part
  if etages % 2 == 1
    brique = 1
    first_part.times do
      (first_part-1).times do
        print " "
      end
      brique.times do
        print "#"
      end
    puts "\n"
    first_part -= 1
    brique += 2
    end

    # Start of the second part
    brique = etages - 2
    second_part.times do
    for i in (1..first_part+1)
        print " "
    end
    brique.times do
        print "#"
    end
    puts "\n"
    first_part += 1
    brique -= 2
      end
    end
  end

wtf_pyramid
