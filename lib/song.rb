require 'pry'

class Song
  extend Memorable::ClassMethods, Findable::ClassMethods
  include Memorable::InstanceMethods, Paramable::InstanceMethods
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  # def initialize
  #   @@songs << self
  # end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
