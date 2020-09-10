class Person
    def walk
        puts 'walk'
    end

    class Student < self
        def say
            puts 'hello'
        end
    end
end

Person::Student.new.walk
Person::Student.new.say