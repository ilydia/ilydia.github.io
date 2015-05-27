class Animals

    attr_accessor :name, :owner_name

end

class Dogs < Animals
    
    def bark
        return "ruh-roh"
    end
end
    
class Cats < Animals
    
    def meow
        return "purr purr"
    end
end
    
class Lambs < Animals
    
    def bleet
        return "baa baa"
    end
end

my_dog = Dogs.new
my_dog.name = "Rover"
dog_name = my_dog.name
puts "#{dog_name} says #{my_dog.bark}."

my_cat = Cats.new
my_cat.name = "Calcifer"
cat_name = my_cat.name
puts "#{cat_name} says #{my_cat.meow}."

my_lamb = Lambs.new
my_lamb.name = "Lambchop"
lamb_name = my_lamb.name
puts "#{lamb_name} says #{my_lamb.bleet}."

puts my_dog.inspect
puts my_cat.inspect
puts my_lamb.inspect