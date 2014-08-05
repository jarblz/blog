Hash q_a = {
  "is red red?"=>"Y",
  "is green black?"=>"N",
  "is new old?"=>"N",
  "is green green?"=>"Y"}
correct=0
incor=0
incorrect=Hash.new {}
q_a.each do |key,value|
  puts key
  answer = gets.chomp.upcase
  unless answer == "Y" || answer=="N"
    puts "Y or N dum dum"
    redo
  end
  if answer == value
    correct +=1
  else 
    incorrect.merge!(key => answer)
    incor+=1
  end
end
puts "you answered #{correct} questions correctly"

incorrect.each do |key,value|
  puts "you answered the question #{key} incorrectly with a value of: #{value}"
end
