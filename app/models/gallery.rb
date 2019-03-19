class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    # self is the gallery who is calling the #paintings method
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    paintings.map do |painting|
      painting.artist
    end
  end

  # ********* METHODS WE DID NOT FINISH *********

  def artist_names
    # We're pulling out the names of the artists associated with a specific gallery
    self.artists.map do |artist|
      artist.name
    end
  end

  def most_expensive_painting
    # See Artist.most_prolific for an explanation of max_by
    self.paintings.max_by do |painting|
      painting.price
    end
  end
  
end
