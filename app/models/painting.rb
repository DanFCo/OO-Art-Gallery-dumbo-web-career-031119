class Painting

  attr_reader :title, :price
  attr_accessor :gallery, :artist

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    # total_price = 0
    # self.all.each do |painting|
    #   total_price += painting.price
    # end
    # total_price

    # ********* OR *********

    # nums = self.all.map {|painting| painting.price}
    # nums.inject(:+)

    # ********* OR *********

    # the 0 in the first argument of inject will make the initial sum equal to zero
    nums = self.all.map {|painting| painting.price}
    nums.inject(0, :+)
  end
  
end
