require_relative 'secret.rb'
require 'httparty'
require 'pry'



def getArtistInfo(artist)
  return HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&api_key=#{API_KEY}&artist=#{artist}&format=json")
end


def getAlbumInfo(artist,album)
  return HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=album.getinfo&api_key=#{API_KEY}&artist=#{artist}&album=#{album}&format=json")
end


