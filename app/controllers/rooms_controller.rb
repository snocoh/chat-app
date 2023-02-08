class RoomsController < ApplicationController
  
  def new                 # チャットルームの新規作成
    @room = Room.new      # 値が空のRoomインスタンス
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end

end
