# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class RoomChannel < ApplicationCable::Channel
  def subscribed
  	p "looking"
    stream_from "this_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    p "no longer looking"
  end

  def speak(data)
  	ActionCable.server.broadcast 'this_channel', message: data['message']
  end
end
