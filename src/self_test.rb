class Person
    def self.say
        puts "say 1"
    end

    def say
        puts "say 2"
    end

    define_method :fn do |name|
        puts "#{name} 2"
    end
end

Person::say
# Person::fn 'xpy'
Person.new.say
Person.new.fn 'xpy'