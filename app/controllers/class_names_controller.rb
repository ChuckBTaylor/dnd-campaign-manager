class ClassNamesController < ApplicationController

  def index
    @class_names = ClassName.all
  end

  def show
    @class_name = ClassName.find_by(name: params[:id]) || ClassName.find(params[:id])
    json = RestClient.get(@class_name.api_url)
    @collection = JSON.parse(json)
  end

end
