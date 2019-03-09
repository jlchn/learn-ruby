
# object reference is passed to the method
# so a method can change the content of an object
# in order to stop object from being changed,we can use dup, freeze and clone method before passing object to the method



def change(s)
	s.replace("changed")
end

s = "s"
change "s"
puts s


s = "s"
s.freeze
change s # error, cannot modify frozen string
puts s

s = "s"
change s.dup
puts s


s = "s"
change s.clone
puts s
