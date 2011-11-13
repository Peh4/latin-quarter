class DrawsController < ApplicationController
  def new
    @draw = Draw.new
    @infos = Info.all
  end

  def show
    @draw = Draw.find(params[:id])
  end
  
  def index
     @draws = Draw.all
  end
  
  def create

    @draw = Draw.new(params[:draw])
    if @draw.save
      # imgData = @draw.data
      #     imgData["data:image/png;base64,"] = ""
      #     url = 'public/images/img_'+@draw.id.to_s+'.png'
      #     File.open(url, 'wb') do |f|
      #       f.write(Base64.decode64(imgData))
      #     end
      
      flash[:success] = "Thanks !"
      # redirect_to @draw
      redirect_to :action => "index"
    else
      @title = "Sign up"
      render 'new'
    end
  end

end
