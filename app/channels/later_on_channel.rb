class LaterOnChannel < ApplicationCable::Channel
  def subscribed
    stop_all_streams
    stream_from "messages:key"
  end
end