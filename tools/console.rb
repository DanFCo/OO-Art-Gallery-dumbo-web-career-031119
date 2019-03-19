require_relative '../config/environment.rb'

jerry = Artist.new("Jerry", 24)
danny = Artist.new("Danny", 100)

moma = Gallery.new("MOMA", "NYC")
louvre = Gallery.new("Louvre", "France")

starry_night = Painting.new("Starry Night", 3, jerry, moma)
mona_lisa = Painting.new("Mona Lisa", 20, danny, louvre)

title1 = jerry.create_painting("Title1", 200, louvre)

binding.pry

puts "Bob Ross rules."
