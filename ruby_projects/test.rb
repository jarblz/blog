def ABCheck(str)

  # code goes here
  hit1='a'
  hit2='b'
  hit=0
  count=0
  str.split(//).each do |letter|
    if letter != hit1 && letter != hit2
      count+=1
    else
    	if hit==0
      	hit=1
        else hit=2
        end
        if count==3&&hit==2
        	return "true"
        else count=0
        end
    end
  puts "hit #{hit}"
  puts count
  end
  return "false"      
end

puts ABCheck("adsaajdababa52b")