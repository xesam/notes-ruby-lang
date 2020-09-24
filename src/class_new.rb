Klass = Class.new do
    def ins_fn
    end

    def self.cls_fn
    end
end

puts (Klass.instance_methods false).to_s
puts (Klass.public_methods false).to_s

Klass.class_eval do
    def ins_fn_2
    end
end

Klass.instance_eval do
    def cls_fn_2
    end
end

puts (Klass.instance_methods false).to_s
puts (Klass.public_methods false).to_s