person = Object.new

def person.name
	return "my name"
end

def person.age
	return 13
end

def person.male?
	return true
end


puts("the name is #{person.name} and the age is #{person.age}")

if person.male?
	puts("this is a man")
else
	puts("this is a woman")
end
