# in the Ruby, almost all the values are evaluated as true in the if statement except false and nil

def print_if (v)
	if v 
		puts true
	else 
		puts false 
	end
end

def print_if_2 (v)
	if v == true
		puts true
	else 
		puts false 
	end
end

print_if "a"
print_if 1
print_if 0
print_if 10
print_if nil

print_if_2 "a"
print_if_2 1
print_if_2 0
print_if_2 10
print_if_2 nil
