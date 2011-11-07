class DrawsController < ApplicationController
  def new
    @draw = Draw.new
  end

  def show
    @draw = Draw.find(params[:id])
  end
  
  def create
    @draw = Draw.new(params[:draw])
    if @draw.save
      flash[:success] = "Thanks #{@draw.author} !"
      redirect_to @draw
    else
      @title = "Sign up"
      render 'new'
    end
  end

end
