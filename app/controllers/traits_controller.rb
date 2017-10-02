class TraitsController < ApplicationController

  def index
    @traits = Trait.all
  end

  def show
    @trait = Trait.find(params[:id])
    json = RestClient.get(@trait.api_url)
    @collection = JSON.parse(json)
  end

end
