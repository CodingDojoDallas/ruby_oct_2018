#delete
our_hash = {first_name: "Coding", last_name: "Dojo", loc: 'Dallas'}
our_hash.delete(:loc)
puts our_hash
puts our_hash.empty?
puts our_hash.has_key?(:loc)
puts our_hash.has_value?("Coding")