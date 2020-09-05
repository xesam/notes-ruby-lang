class Person
    def self.say
        print "say 1\n"
    end

    def say
        print "say 2\n"
    end

    define_method :fn do |name|
        print "#{name} 2\n"
    end
end

Person::say
# Person::fn :xpy
Person.new.say
Person.new.fn 'xpy'