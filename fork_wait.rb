child = fork do
  sleep 3
  puts "Child says 'Hi'!"
end

puts "Waiting for the child process..."
Process.wait child
puts "All done!"
