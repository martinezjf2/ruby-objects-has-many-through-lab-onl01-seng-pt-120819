


#Waiter

class Artist
  attr_accessor :name, :song
  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select { |song| song.artist == self}
    #[1,2,3,4,5].select { |num|  num.even?  }   #=> [2, 4]


  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    songs.collect { |song| song.genre }
  end





end
