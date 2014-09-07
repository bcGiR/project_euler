require 'prime'

factors = []

def factor(input, array)
  if Prime.prime?(input)
    array.push(input)
    array.each{ |factor| puts factor }
    return input
  end
  2.upto(Math.sqrt(input)) do |factor|
    if Prime.prime?(factor)
      if input % factor == 0
        input = input / factor
        array.push(factor)
        factor(input, array)
        break
      end
    end
  end
end

puts "The prime factors of 13195 are:"
factor(13195, factors)
puts ""
factors = []

puts "The prime factors of 60085147514 are:"
factor(600851475143, factors)
puts ""
factors = []
