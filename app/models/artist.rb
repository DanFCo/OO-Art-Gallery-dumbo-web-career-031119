class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    self.paintings().map do |painting|
      painting.gallery
    end
  end

  # ********* METHODS WE DID NOT FINISH *********

  def cities
    # Galleries contain the cities, so I'm grabbing all the artist's galleries and for each of them, pulling out the city.
    self.galleries.map do |gallery|
      gallery.city
    end
  end

  def self.total_experience
    # Similar to the Painting.total_price
    years = self.all.map { |artist| artist.years_experience }
    years.inject(0, :+)
  end

  def self.most_prolific
    # The block of max_by is usually a number and max_by will return the instance in an array which returned the highest number in the block.
    self.all.max_by do |artist|
      artist.years_experience
    end
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
  
end
