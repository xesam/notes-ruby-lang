Klass = Class.new do
    def say
        puts 'hello 1'
    end

    def self.say
        puts 'hello 2'
    end
end

Klass.new.say
Klass.say