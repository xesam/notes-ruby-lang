module Included

end

module Prepended

end

class Super
    include Included
    prepend Prepended
end

class Sub < Super

end

target = Sub

while target.superclass != nil 
    print "#{target.superclass}\n"
    target = target.superclass
end

print Sub.ancestors