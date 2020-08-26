class Genre
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def songs
    Song.all.select {|s| s.genre == self}
  end
  
  def artists
    songs.map(&:artist)
  end
  
end