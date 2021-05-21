class RoomsController < ApplicationController
  # def index
  # end
  
  def new
    @room = Room.new
  end

  def create
    # binding.pry
   @room = Room.new(room_params)
  end
  
    def destroy
      room = Room.find(params[:id])
      room.destroy
      redirect_to room_path
    end

  private

  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end




  


end
