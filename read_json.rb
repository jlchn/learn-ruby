require "json"
file = File.read "/home/jiangli/Documents/download.json"
datas = JSON.parse(file)
lines = Array.new
File.open("/home/jiangli/Documents/users.txt").each { |line| lines << line.strip }

result = Hash.new
result2 = Array.new
datas.each do |d|
	lines.each do |l|
		if l.empty?
			next
		end
		if d['email'] == l
			 result2 << d['email'] + ";" + d['section1'] + ";" + d['section2'] + ";" + d['section3'] + "\n"
                        section = d['section1'].split(/Div./).first
			if result.key?(section)
				result[section] += 1;
			else
				result[section] = 1;
			end
		end
	end
end

puts result

File.open("output.csv",'w') { |file|
        file.puts(result2)
}
