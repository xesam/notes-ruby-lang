class String
    def to_alphanumeric
        gsub(/[^\w\s]/, '')
    end
end

puts '####123'.to_alphanumeric