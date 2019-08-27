class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def initialize
    Song.create
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = Song.new 
    song.save = song
    song
  end

end
