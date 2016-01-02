class LaterOnChannel < ApplicationCable::Channel
  def follow(data)
    puts "DATTA: #{data}"
    stop_all_streams
    # stream_from "messages:#{data['message_id'].to_i}:comments"
  end

  def subscribed
    puts "subscribed!!!!===>>>=>=>=>"
    stream_from "messages"
  end

  def unfollow
    stop_all_streams
  end
end