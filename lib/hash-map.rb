
class HashMap 
  
  attr_accessor :bucket, :capacity, :index

  def initialize(hash_map_size)
    @bucket = Array.new(hash_map_size)
    @capacity = @bucket.length
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
    if @bucket[@index] == nil
      @bucket[@index] = "#{key} = #{value}"
    elsif get_key(@bucket[@index]) == key
      @bucket[@index] = "#{key} = #{value}"
    else
      @newBucket = HashMap.new(@bucket.length * 2)
      @capacity = @newBucket.capacity
      @bucket.compact.each { |node| @newBucket.set(get_key(node),get_value(node))}
      @newBucket.set(key,value)
      @bucket = @newBucket.bucket
     
    end

  end
  
  def get_key(node)
    @split = node.to_s.index(" = ")
    @key = node.to_s.slice(0, @split)
    @key
  end

  def get_value(node)
    @split = node.to_s.index(" = ")
    @value = node.to_s.slice(@split + 3, node.length-1)
    @value
  end

  def get(key)
    @index = hash(key) % self.capacity
    puts @index
    @node = @bucket[@index]
    @value = get_value(@node)
    @value
  end

  def has?(key)
    @contain = false
    @bucket.each { |node| 
    if node != nil
      if get_key(node) == key 
      @contain = true
      end
      end}
    @contain
  end

  def remove(key)
    if @bucket.has?(key) == true
      @index = hash(key) % self.capacity
      @bucket[@index] = nil
    else
      nil
    end
    @bucket
  end

  def length
    @count = @capacity
    @bucket.each { |node|
    if node == nil
      @count -= 1
    end}
  end

  def clear
    @bucket.each { |node|
    node = nil}
    @bucket
  end

  def keys
    @bucket.each {|node|
    if node != nil
      puts get_key(node)
    end}
  end

  def values
    @bucket.each {|node|
    if node != nil
      puts get_value(node)
    end}
  end

  def entries
    @entry_array = Array.new
    @bucket.each { |node|
    if node != nil
      @entry = Array.new
      @key = get_key(node)
      @value = get_value(node)
      @entry.push(@key,@value)
      @entry_array.push(@entry)
    end}
    @entry_array
  end

  def to_s
    @bucket.each { |ele| puts ele if ele != nil}
    "#{@capacity} :Buckets \n"

  end

end
