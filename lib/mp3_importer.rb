class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path 
  end 
  
  
  def files 
    dir.each do |i|
      if i != "."
        files = Dir.entries(@path)
      end 
    end 
    puts files
  end 
  
  def import 
    
  end 
  
end 