class RoomsController < ApplicationController
  def new                 # チャットルームの新規作成
    @room = Room.new      # 値が空のRoomインスタンス
  end
end
