def palindrome(num1, num2)
  until num1 == 0
    until num2 == 0
      product = num1 * num2
      if product.to_s == product.to_s.reverse
        puts "product = #{product}"
        puts "factors = #{num1}, #{num2}"
        return true
      end
    num2 -= 1
    end
  num1 -= 1
  end
end

palindrome(99, 99)
puts ""
palindrome(999, 999)
puts ""
palindrome(9999, 9999)
puts ""
palindrome(99999, 99999)
puts ""
palindrome(999999, 999999)
puts ""
palindrome(9999999, 9999999)
puts ""
