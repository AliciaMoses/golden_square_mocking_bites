class MusicLibrary
    def initialize
      @tracks = []
    end
  
    def add(track) 
        @tracks << track
    end
  
    def all
      return @tracks
    end
    
    def search(keyword) 
        return @tracks.select do |track|
            track.matches?(keyword)
        end
    end
  
end