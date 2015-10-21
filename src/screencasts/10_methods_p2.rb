def hello_world(first_name = "", family_name = "")
  puts "Hello world"
  unless family_name == "" && first_name == ""
    puts "My name is " + first_name + " " + family_name
  end
end

hello_world
hello_world("Dmitry")
hello_world("Dmitry", "Fedushov")
hello_world("James", "Bond")
hello_world("Jane", "Bond")
