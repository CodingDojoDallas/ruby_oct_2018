# def test 
#     puts "You are in the method" 
#     yield 
#     puts "You are again back to the method" 
#     yield 
#   end 
#   test { puts "You are in the block" }

  # This will produce the following result:
  # "You are in the method"
  # "You are in the block"
  # "You are again back to the method"
  # "You are in the block"


  # You also can pass parameters with the yield statement. Here is an example:
  # def test 
  #   yield 5 
  #   puts "You are in the method test" 
  #   yield 100 
  # end 
  # test { |i| puts "You are in the block #{i}" }

  # This will produce the following result:

  # "You are in the block 5"
  # "You are in the method test"
  # "You are in the block 100"

  