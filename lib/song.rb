require "pry"
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    s = self.new
    @@all << s.save
    s
  end

  def self.new_by_name(string_name_of_a_song)
    s = self.new
    s.name = string_name_of_a_song
    s.save
    s
  end

  def self.create_by_name(string_name_of_a_song)
    s = self.new
    s.name = string_name_of_a_song
    s.save
    s
  end

  def self.find_by_name(string_name_of_a_song)
    s = self.new
    self.all.find{|i| i.name == string_name_of_a_song}
  end

  def self.find_or_create_by_name(find_song)
     s = self.new
     if find_by_name(find_song)
        find_by_name(find_song)
     else
        create_by_name(find_song)
     end
  end

  def self.alphabetical
     self.all.sort_by {|x| x.name}
  end

  def self.new_from_filename(filename)

    # binding.pry
  end

  def self.create_from_filename
      file = file_name.split(" - ")

  end

  def self.destroy_all
    @@all.clear
    @@all = []
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end
end
