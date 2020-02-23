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
    #why cant i put @files??
    #ohh its because when the test is run it initializes a new instance, if we juse @files, @files is considered a blank array because the instance method #files is never ran. 
    self.files.each do |i|
      Song.new_by_filename(i)
    end 
  end 
  
end 