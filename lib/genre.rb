


#Customer

class Genre
  attr_accessor :name, :song
  @@all = []

  def initialize(name)
    @name = name
    # @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all {|song| song.genre}
  end

  def artists
    songs.collect {|song| song.artist}

  end






end
