class ParsesController < ApplicationController
  
  def index
    @parses = Parse.order('created_at DESC')
  end
  
  def new
    @parse = Parse.new
  end
  
  def create
    @parse = Parse.create(parse_params)
    if @parse.save
      redirect_to @parse
    else
      redirect_to :back, notice: @parse.errors
    end
  end

  def show
    @parse = Parse.find(params[:id])
  end


  private
  def parse_params
    params.require(:parse).permit(:text)
  end
end
