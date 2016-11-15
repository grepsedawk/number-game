#!/usr/bin/env ruby
winning_numbers = [2, 5, 8, 11, 14, 17, 20]
winner = 'Human'
number = 0
puts "The goal of this game is simple. Start with 0, then\n"\
     "add 1 or 0. The first person to chose 21 or more loses."
puts "You go first! You can start with 1 or 2"

until number >= 21
    print "1 or 2? "
    chosen_number = gets.chomp
    next unless [1, 2].include? chosen_number.to_i
    number = number + chosen_number.to_i
    puts "You chose #{chosen_number}, number is now #{number}"
    if number >= 21 then
        winner = 'Computer'
        break
    end
    chosen_number = 1
    chosen_number = 2 if winning_numbers.include? number + 2 or [true, false].sample unless winning_numbers.include? number + 1
    number = number + chosen_number.to_i
    puts "Computer chose #{chosen_number}, number is now #{number}"
end

puts "#{winner} wins!"
