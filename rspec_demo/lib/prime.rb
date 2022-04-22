def prime?(n)
  if n < 2 
    return false
  end

  (2...n).each do |i|
    if n % i == 0 
      return false
    end
  end
  return true
end

p prime?(2)
p prime?(11)
