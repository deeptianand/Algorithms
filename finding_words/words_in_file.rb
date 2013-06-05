def most_common_words(txtfile,n)
text = File.open(txtfile) {|f| f.read.split}
hash = {}
text.each do |word|
if hash.has_key?(word)
hash[word] += 1
else hash[word] = 1
end
end
result = Hash[Hash[hash.sort_by{|k,v| v}.reverse].sort_by { |k,v| -v }[0..n-1]]
result.each_pair do |k,v|
	puts "#{k}:#{v}"
end
end