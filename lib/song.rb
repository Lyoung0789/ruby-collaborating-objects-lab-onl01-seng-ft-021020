class Song 
  attr_accessor :name, :artist
  @@all = []
  
  def initialize (name)
    @name = name 
    @@all << self
  end 
  
  def self.all
    @@all 
  end 
  
  def self.new_by_filename(file)
    song = Song.new(file.split(" - ")[1])
    @artist = file.split(" - ")[0]
    song.artist_name = @artist
    song
  end 
  
  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    self.artist.add_song(self)
  end 
  
end 