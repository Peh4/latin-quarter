class InfosController < ApplicationController
  def new
    @info = Info.new
  end

  def index
    @infos = Info.all
  end

  def create
    @info = Info.new(params[:info])
    if @info.save
      flash[:success] = "ok !"
      # redirect_to @draw
      redirect_to :action => "new"
    else
      render 'new'
    end
  end



end
