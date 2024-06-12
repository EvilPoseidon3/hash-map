
class HashMap

  def initialize(hash_map_size)
    @bucket = Array.new(hash_map_size)
    @capacity = hash_map_size
    @load_factor = 0.8
    

  end

  def hash(key)
    hash_code = 0
    prime_number = 31
       
    key.each_char { |char| hash_code = prime_number * hash_code + char.ord }
       
    hash_code
  end
  
  def set(key,value)
    @hashcode = hash(key)
    @index = @hashcode % @capacity
    if self[@index] == nil
      self[@index] = "#{key} = #{value}"
    else
      @newBucket = Array.new(@bucket.length * 2)
      @bucket.each { |node| @newBucket.set(node.get_key,node.get_value)}
      @bucket = @newBucket
    end

  end
  def get_key(node)
    @split = node.index(" = ")
    @key = node.split(0, @split)
    @key
  end

  def get_value(node)
    @split = node.index(" = ")
    @value = node.split(@split+3, @node.length-1)
    @value
  end

  def get(key)

  end

  def has?(key)

  end

  def remove(key)

  end

  def length

  end

  def keys

  end

  def values

  end

  def entries

  end

end
