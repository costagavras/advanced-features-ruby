require 'prime'
primes = []
generator = Prime.each
start = Time.now

while Time.now < (start + 5)
  primes << generator.next
end

puts "Ran for #{Time.now - start} seconds."
puts "Found #{primes.size} primes, ending in #{primes.last}"
