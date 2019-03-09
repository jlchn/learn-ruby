class Element 
	def initialize(name, argument, attributes, sub_elements)
		@name = name
		@argument = argument
		@sub_elements = sub_elements
		@attributes = attributes
	end

	attr_accessor :name, :argument, :sub_elements, :attributes

end

class Config

	def read(path)
		@file_absolute_path = File.basename(path)
		@file_lines = File.read(path).split("\n")
		parse()
	end

	private
	def parse()
		_sub_elements, _attributes, line_num = parse_element("ROOT",0)
		p Element.new("ROOT", "", _attributes, _sub_elements)
	end
	
	private
	def parse_element(parent_element_name, line_num)
		attributes = {}
		sub_elements = []

		while line_num < @file_lines.length
			line = @file_lines[line_num]
			line.lstrip!
			line.gsub!(/\s*(?:#.*)?$/,"")

			if line.empty?
				line_num +=1
				next
			elsif match = /^\<([a-zA-Z0-9_]+)\s*(.+?)?\>$/.match(line) # an element tag matched
				_elements, _attributes, line_num = parse_element(match[1], line_num + 1)
				sub_elements << Element.new(match[1], match[2] || "", _attributes, _elements)
				next
			elsif line == "</#{parent_element_name}>"
				line_num +=1
				break
			elsif match = /^([a-zA-Z0-9_]+)\s*(.+)?$/.match(line) # attribute line matched
				attributes[match[1]] = match[2] || ""	
				line_num +=1
				next
			else
				raise StandardError, "parse error at #{line_num}"
			end
		end

		return sub_elements, attributes, line_num

	end


end

config = Config.new
config.read("td-agent.conf")

