class AClass
    def greet
        puts 'hello'
    end
end

class AClass
    def a_new_greet
        puts 'hi'
    end
    def a_new_greet
        puts 'hi~'
    end
    def greet_again
        puts greet
        puts 'a nice day'
    end
end

AClass.new.greet
AClass.new.a_new_greet
AClass.new.greet_again