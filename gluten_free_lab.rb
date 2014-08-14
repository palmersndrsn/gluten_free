
pizza = ["cheese", "gluten", "tomatoes"]
pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]


class Person

	def initialize(name, allergies)
		@name = name
		@allergies = allergies
		@stomach = []
		p name
		p allergies
	end

	def to_s
    "(#@name, #@stomach)"
  end

	def eat(food)
		food.each do |ingre|
			unless @allergies == ingre
				@stomach.push(food)
			else
				puts "food unconsumed"
				puts "I told you I can't eat #{ingre}"
				@stomach = []
				break
			end
		end
		unless @stomach == []
			puts "food consumed"
		end
	end


end

ron = Person.new("Ron_Swanson", "gluten")

ron.eat(pizza)
