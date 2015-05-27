puts "Are you good? Answer Y/N:"
answer = gets.chomp.downcase

while (answer == "y")
    puts "I love you."
    answer = "done"
end

while (answer == "n")
    puts "I still love you."
    answer = "done"
end

if (answer != "done")
    puts "I love you even when you don't follow directions."
end