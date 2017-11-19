
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  # def artist=(name)
  #   if self.artist.nil?
  #     artist.name = Artist.new(name)
  #   else
  #     self.artist.name = name
  #   end
  # end

  def artist_name=(artist_name)
    Artist.find_or_create_by_name(artist_name)
  end
    

  def self.new_by_filename(file_name)
    file = file_name.split(" - ")
    song = file[1]
    new_song = self.new(song)
    new_song.artist.name = file[0]

    
    Artist.new = file[0]
    song = file[1]
    new_song = self.new(song)
    new_song.artist.name = artist

  end


end
