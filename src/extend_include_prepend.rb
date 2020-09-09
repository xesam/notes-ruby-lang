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

Super.fn1 # class method

def puts_superclass(target)
  while target.superclass != nil
    puts target.superclass
    target = target.superclass
  end
end

puts '#superclass'
puts_superclass Sub

puts '#Sub.ancestors'

puts Sub.ancestors.to_s