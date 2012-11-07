def power(base, exponent)
  raise AttributeError, "The exponent must be an integer." unless exponent.is_a?(Integer)
  case base
  when 0 then 0
  when 1 then 1
  else case exponent
    when 0 then 0
    when 1 then base
    else base * power(base, exponent - 1)
    end
  end
end

def power2(base, exponent)
  result = 1.0
  exponent.times do
    result *= base
  end
  result
end


print "Enter a base: "
userbase = gets.to_f
print "Enter an exponent: "
userexp = gets.to_i
print "#{userbase} ^ #{userexp} + = #{power(userbase, userexp)}"