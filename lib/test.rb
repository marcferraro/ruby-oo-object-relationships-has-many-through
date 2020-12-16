require_relative 'customer.rb'
require_relative 'waiter.rb'
require_relative 'meal.rb'
require 'pry'


joey = Customer.new("Joey", 15)
uwade = Customer.new("Uwade", 29)

paula = Waiter.new("Paula", 24)

meal1 = joey.new_meal(paula, 20, 4)
meal2 = joey.new_meal(paula, 20, 4)
meal3 = uwade.new_meal(paula, 20, 4)
meal4 = uwade.new_meal(paula, 20, 4)
meal5 = uwade.new_meal(paula, 20, 4)

pets = ["dog", "dog", "cat"]
pets.max_by {|pet| pets.count(pet)}
binding.pry