class ActiviteController < ApplicationController
  def index
    @articles=Article.where(mytype:params[:activite])
  end
end
