require "pry"

def power()
    puts "Input base: "
    base = gets.to_i
    puts "Input power: "
    power = gets.to_i
    index = 0
    until index == power - 1
        base = base * base
      end
        index += 1

    puts base
end

power
