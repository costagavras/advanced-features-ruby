require 'timeout'

flag = false
answer = nil

begin
  Timeout.timeout(5) do
    puts "type: hello!"
    answer = gets.chomp
    flag = true
  end
rescue TimeoutError
  flag = false
end

if flag
  if answer == "hello"
    puts "Thank you!"
  else
    puts "That's not a hello!"
    exit
  end
else
  puts "Hey, too slow!"
  exit
end

puts "Bye now..."
