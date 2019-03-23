# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

require 'pry'

# name_hash = {:blake=>500, :ashley=>2, :adam=>1}
#first argument passed; min_key = :blake
#first argument passed; min_value = 500


def key_for_min_value(name_hash)
  if name_hash == {}
    nil 
  else 
    min_key = name_hash.first[0]
    min_value = name_hash.first[1]
    name_hash.each do |key, value|
      if value < min_value
        min_value = value 
        min_key = key 
        #binding.pry
      end
    end
  end
  min_key
end
