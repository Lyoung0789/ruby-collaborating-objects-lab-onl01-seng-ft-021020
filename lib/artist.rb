class Artist 
  attr_accessor :name
  @@all = []
  
  
  def initialize(name)
    @name = name
    @@all << self 
    @song =[]
  end 
  
  def self.all 
    @@all 
  end 
  
  #did i do this right?? created a song array when initialized idk if this is right. shovel all song.names in array to be printed out with the print_songs array.
  def add_song(song)
    @song << song.name
    song.artist = self
    
  end 
  
  def songs
    Song.all.select {|song| song.artist == self}
  end 
  
  def self.find_or_create_by_name(name)
    if @@all.detect{|i| i.name == name}
      return @@all.detect{|i| i.name ==name}
    else
      Artist.new(name)
    end 
  end 
  
  def print_songs
    puts @song
  end 
  

end 