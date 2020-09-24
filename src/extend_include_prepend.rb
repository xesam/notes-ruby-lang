module Extended
    def fn1
        puts 'extend'
    end
end

module Included
    def fn2
        puts 'include'
    end
end

module Prepended
    def fn3
        puts 'prepend'
    end
end

class Super
    extend Extended
    include Included
    prepend Prepended
end

class Sub < Super

end

def puts_superclass(target)
    ancestors = []
    while target.superclass != nil
        ancestors.push target.superclass
        target = target.superclass
    end
    ancestors
end

puts '#superclass'
puts (puts_superclass Sub).to_s

puts '#Sub.ancestors'
puts Sub.ancestors.to_s

puts (Super.instance_methods false).to_s
puts (Super.public_methods false).to_s