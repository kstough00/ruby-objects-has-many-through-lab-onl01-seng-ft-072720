class Genre
  
  attr_accessor :name, :song, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @song = song
    @artist = artist
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.genre == self}
  end
  
  def artists
    Song.all.select {|song| song.artist == self}
    songs.map {|song| song.artist}
  end
  
  def new_song(name, artist)
    Song.new(name, self, artist)
  end
  
end