require 'open-uri'
require 'json'
class FlatsController < ApplicationController
  before_action :set_flats

  def index
  end

  def show
    id = params[:id].to_i
    @flat = @flats.select{|flat| flat['id']== id}.first
  end

  private
    def set_flats
      url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
      @flats = JSON.parse(URI.open(url).read)
    end
end
