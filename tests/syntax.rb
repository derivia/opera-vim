# Some commentary
class Animal
    attr_accessor :name, :type

    def initialize(name, type)
        @name = name
        @type = type
    end

    def make_sound
        puts "#{@name} makes a sound."
    end
end

def greet(animal)
    "Hello, #{animal.name}!"
end

dog = Animal.new("Rex", "dog")
dog.make_sound
puts greet(dog)

=begin
  Some longer commentary
=end
numbers = [1, 2, 3, 4, 5]
squared = numbers.map { |num| num ** 2 }
puts "Squared numbers: #{squared.inspect}"

begin
    raise "An error occurred!"
rescue => e
    puts "Caught exception: #{e.message}"
end

