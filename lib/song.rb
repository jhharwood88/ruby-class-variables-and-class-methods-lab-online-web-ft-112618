require 'pry'
class Song

  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  
 
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << self.artist
    @@genres << self.genre
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.each {|key| 
      if genre_count.has_key?("#{key}")
          genre_count["#{key}"] += 1
      else
        genre_count["#{key}"] = 1
      end
    }
    genre_count
      
  end
  
  def self.artist_count
    
   artist_count = {}
    @@artists.each {|key| 
      if artist_count.has_key?("#{key}")
          artist_count["#{key}"] += 1
      else
        artist_count["#{key}"] = 1
      end
    }
    artist_count
    
  end

    
end