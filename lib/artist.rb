require "pry"

class Artist
  attr_accessor :name, :song
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def songs
    @songs
  end

  def add_song_by_name(song)
    add_song(Song.new(song))
  end

  def self.song_count
    @@song_count
  end
end
