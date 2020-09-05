a = 1
@@a = 1

class P
    a = 2
    @@a = 2
    @@b = 3
    def say
        @a = 4
        puts "say #{@a}"
    end

    def greet
        puts "greet #{@a}"
    end
end

p = P.new
p.say
p.greet

puts a == 1 # true
puts @@a == 2 # true