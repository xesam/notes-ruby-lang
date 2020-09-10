def p(name, b = {})
    puts "name=#{name}"
    puts b
end

p('xpy')
p('xpy', {:k1 => "v1", :k2 => "v2"})
p('xpy', {k1: "v1", k2: "v2"})
p('xpy', k1: "v1", k2: "v2") #调用函数时，如果散列是最后一个参数，可以省略花括号
