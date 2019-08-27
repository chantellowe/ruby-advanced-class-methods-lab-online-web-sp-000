class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def initialize
    
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new
    song.save
    song
  end
  
  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end
  
  def self.create_by_name(name)
    song = self.new
    song.name = name
    song.save
    song
  end
  
  def self.find_by_name(name)
    @@all.find{|song| song.name == name}
  end
  
  def self.find_or_create_by_name(name)
    #if self.find_by_name(name)
      #self.find_by_name(name)
    #else
      #self.create_by_name(name)
    #end
    
    self.find_by_name(name) || self.create_by_name(name)
  end
  
  def self.alphabetical
    @@all.sort_by{ |song| song.name }
  end
  
  def self.new_from_filename(name, artist_name)
    arr = []
    song = self.new
    song.artist_name = artist_name
    arr << song.split(" - ", ".mp3")
    arr[0] = artist_name
    arr[1] = name
  end
  
end
