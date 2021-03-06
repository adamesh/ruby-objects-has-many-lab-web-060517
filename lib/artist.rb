require 'pry'

class Artist

  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []

  end

  def self.song_count
    @@song_count
  end

  def add_song(song_obj)
    self.songs << song_obj
    song_obj.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end




end
