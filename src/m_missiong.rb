class S
    def method_missing(name, args, &block)
        puts name
        puts args
        block.call if block
    end
end

S.new.say :hello do ||
    puts 'end'
end