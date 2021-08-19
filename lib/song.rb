class Song
  @@count = 0
  @@artists = []
  @@genres = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    
    @@artists << @artist
    @@genres << @genre
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
    counter = 1
    sortedGenres = @@genres.sort
    sortedGenres.each do |genre|
      !genre_count[genre] ? counter = 1 : counter += 1
      genre_count[genre] = counter
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    counter = 1
    sortedArtists = @@artists.sort
    sortedArtists.each do |artist|
      !artist_count[artist] ? counter = 1 : counter += 1
      artist_count[artist] = counter
    end
    artist_count
  end

end