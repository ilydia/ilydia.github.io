class Dogs

    def set_name=(dog_name)
        @name = dog_name
    end

    def get_name
        return @name
    end
    
    def set_human=(human_name)
        @human_name = human_name
    end

    def get_human
        return @human_name
    end

    def bark
        return "ruh-roh"
    end
    
end

my_dog = Dogs.new
my_dog.set_name= "Rover"
dog_name = my_dog.get_name
puts "#{dog_name} says #{my_dog.bark}."

puts my_dog.inspect

