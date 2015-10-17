def hello_world(first_name = "", family_name = "")
  greetting = "Hello world\n"
  unless family_name == "" && first_name == ""
    greetting += "My name is " + first_name + " " + family_name
  end
  greetting # this is return value, equals "return greeting"
end

puts             hello_world("Dmitry", "Fedushov")
#send_via_email  hello_world
#send_over_http  hello_world