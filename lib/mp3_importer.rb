class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path 
  end 
  
  
  def files 
    files = Dir.entries(@path)
    puts files
    files.collect do |i|
      if i == "." || i ==".."
        i.delete
      end 
    end
    puts files
  end 
  
  def import 
    
  end 
  
end 