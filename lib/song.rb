class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
    @@genre_count
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.each do |genre|
      if @@genre_count.any? {|genre_h, count| genre_h == genre}
        @@genre_count[genre] += 1
      else
        @@genre_count[genre] = 1
      end
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |genre|
      if @@artist_count.any? {|genre_h, count| genre_h == genre}
        @@artist_count[genre] += 1
      else
        @@artist_count[genre] = 1
      end
    end
    @@artist_count
  end

end
