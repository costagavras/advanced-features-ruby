require 'timeout'

x = 1
y = 2

Timeout.timeout(1) do
  thread = Thread.new(99, 100) do |a, b|
    x = 10
    y = 11
  end
end

puts x, y
