
class RandomName
  @@firstnames = ["Mathew","Luke","John","Samual","Paul","Whilliam","Tony","Michele","Scott","Garrett","Graham","Jakob","Kenndei","Graycen","Preston","Robert","Shelley","Sean","Stefeny"]
  @@lastnames = ["Trevino","Goolsby","Fedro","Londenberg","Hatton","Lucus","Black","Spivey","Delgado","Hoffman","Haigood","Hager","Teakel","Priest","Stump"]




  def self.random_name(a = @@firstnames, b = @@lastnames)
    @name = a[rand(0..a.length)] + rand(0.. 14003).to_s + " " + b[rand(0..b.length)]
    @name
  end

  def self.random_first(a = @@firstnames)
    @first = a[rand(0..a.length-1)] + rand(0.. 14003).to_s
    @first
  end

  def self.random_last(b = @@lastnames)
    @last = b[rand(0..b.length-1)]
    @last
  end
end
