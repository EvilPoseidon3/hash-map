require_relative "lib/hash-map"
require_relative "lib/random-name-generator"

hashmap = HashMap.new(13)

12.times { |i| hashmap.set(RandomName.random_first, RandomName.random_last)}






puts hashmap
print hashmap.entries