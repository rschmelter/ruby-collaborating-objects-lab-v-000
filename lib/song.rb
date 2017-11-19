
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

  def self.new_by_filename(file_name)
    file = file_name.split(" - ")
    artist = file[0]
    song = file[1]
    new_song = self.new(song)
    new_song.artist.name = artist

  end


end
