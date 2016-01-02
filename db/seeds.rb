10.times do
  Movie.create!( title: SecureRandom.hex )
end