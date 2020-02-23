class MP3Importer
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path 
  end 
  
  
  def files 
    @files = Dir.entries(@path)
    
    @files.collect do |i|
      if i == "." || i ==".."
        @files.delete(i)
      end 
    end
    @files
  end 
  
  def import 
    @files.each do |i|
      Song.new_by_filename(i)
    end 
  end 
  
end 