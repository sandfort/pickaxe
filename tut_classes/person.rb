class Person
  def initialize(name)
    @name = name
  end
  def to_s
    "Person named #{@name}"
  end
end

p = Person.new("Michael")
puts p

class Child < Person
end

c = Child.new("Mikey")
puts c

