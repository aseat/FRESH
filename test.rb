sum = 0
for i in 1..33333
  if i % 3 == 0 || i.to_s.include?("3")
    sum += i
    puts sum 
  else
  end
end