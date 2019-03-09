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



# show all methods of the object
puts(person.methods.sort)

# object_id
puts(person.object_id)
obj_2 = person
puts(obj_2.object_id)

string_1 = "123"
string_2 = "123"

puts string_1.object_id
puts string_2.object_id

#respond_to? whether the receiver know how to deal with the message it got

if person.respond_to?("talk2")
	person.talk2
else 
	puts "sorry, the person object can not understand the talk2 message"
end


