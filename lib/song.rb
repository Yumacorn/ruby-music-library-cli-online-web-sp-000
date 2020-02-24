require 'pry'

class Song
  attr_accessor :name

 @@all = []

  def initialize(title)
    @name = title
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all = []
  end

  def save
    @@all << self
  end

  def self.create(title)
    newSong = Song.new(title)
    newSong.save
    newSong
  end
end
