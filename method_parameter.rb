
# in the Ruby, a method can hold 0, 1 and n parameters
# but once the paremeter counts is decided, we have to provide all parameters while calling
# except we define a method which support ramdom count(0-n) of parameters


def m1(a ,b)
	#do nothing
end

def m2(a, *x)
	puts x

end

m2(1,2,4)
m1(5,6)
#m1(5)


def m3 (a=100)
	puts a
end

m3

