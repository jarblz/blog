result = get('http://thecatapi.com/api/images/get?format=xml').parsed_response
result.each do |x|
	x.each do |y|
		y.each do |z|
			puts z
			puts "======"
		end
	end
end