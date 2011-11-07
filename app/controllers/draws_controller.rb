class DrawsController < ApplicationController
  def new
  end

  def show
    @draw = Draw.find(params[:id])
  end

end
