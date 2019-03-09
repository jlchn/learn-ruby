
print("please write something on the console: ")
input = gets
print("your input is:", input)

puts(" I will read this file and write to a new file")

file_content = File.read("read_from_console.rb")

new_file = File.new("read_from_console.rb.bak","w")
new_file.puts(file_content)
new_file.close()


