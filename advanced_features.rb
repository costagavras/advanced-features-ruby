# a_number = 15
# an_expression = %{#{a_number}*2}
# puts eval(an_expression)

# def binding_elsewhere
#   x = 20
#   return binding
# end
#
# remote_binding = binding_elsewhere
#
# x = 10
# eval("puts x")
# eval("puts x", remote_binding)

class Class
  def add_accessor(accessor_name)
    self.class_eval %{
      attr_accessor :#{accessor_name}
    }
  end
end

class Person
end

person = Person.new
Person.add_accessor :name
Person.add_accessor :gender
person.name = "Jim Hacker"
person.gender = "male"
puts "#{person.name} is #{person.gender}"

def name
  @name
end

def name=(value)
  @name = value
end

class Class
  def add_accessor(accessor_name)
    self.class_eval %{
      def #{accessor_name}
        @#{accessor_name}
      end

      def #{accessor_name} = {value}
        @#{accessor_name} = value
      end
    }
  end
end
