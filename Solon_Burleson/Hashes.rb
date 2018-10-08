our_hash = {:first_name => "Coding", :last_name => "Dojo"}

our_hash.delete(:last_name)
puts our_hash
puts our_hash.empty?
puts our_hash.has_key?(:first_name)
puts our_hash.has_value?("Coding")