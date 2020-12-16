require 'pry'
class Waiter
    attr_accessor :name, :yrs_experience

    @@all = []

    def initialize(name, yrs_experience)
        @name = name
        @yrs_experience = yrs_experience
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(customer, total, tip=0)
        Meal.new(self, customer, total, tip)
    end 

    def meals
        Meal.all.select do |meal|
          meal.waiter == self #checking for waiter now
        end
    end 

    def best_tipper
        best_tipped_meal = meals.max do |meal_a, meal_b|
            meal_a.tip <=> meal_b.tip
        end
        best_tipped_meal.customer
    end

    def most_frequent_customer
        customer_names = customer_array = meals.map do |meal| 
            meal.customer.name
        end
        most_frequent_name = customer_names.max_by {|name| customer_names.count(name)}
        Customer.all.find {|customer| customer.name == most_frequent_name}
    end
end