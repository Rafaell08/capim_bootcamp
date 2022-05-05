cap_lambda = lambda do |name|
    puts "#{name.capitalize}"
end

def capitalize_name(cap_lambda)
    cap_lambda.call("formAs")
    cap_lambda.call("atriButOs")
end

capitalize_name(cap_lambda)

puts "-" * 20

# Apenas fiz de uma forma diferente usando

class CapitalizeName
    def capitalize(name)
        puts "#{name.capitalize}"
    end
end

name_cap = CapitalizeName.new
name_cap.capitalize("formAS")
name_cap.capitalize("atrIbutOS")
