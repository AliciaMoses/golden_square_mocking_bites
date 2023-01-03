class Track
    def initialize(title, artist) 
        @title = title
        @artist = artist
    end
  
    def matches?(keyword) 
        @title.include?(keyword) ? true :
        @artist.include?(keyword) ? true :
        false
    end
  end