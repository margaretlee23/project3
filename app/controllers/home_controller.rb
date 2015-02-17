# require 'open-uri'
# require 'uri'

class HomeController < ApplicationController


  def index
    @lists = List.all
  end

#   def show
#     if params[:search] != nil
#       @results = GooglePlacesApi.query(params[:search])
#     end
#       @details = GooglePlacesApi.details(params[:id])
#       # @photos  = GooglePlacesApi.photos(:id)
#   end
end