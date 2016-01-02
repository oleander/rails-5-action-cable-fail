class LaterOnChannel < ApplicationCable::Channel
  def subscribed
    puts "DATTA: #{params}"
    # stop_all_streams
    stop_all_streams
    stream_from "messages:key"

  end

  # def tryme
  #   # stream_from "messages:key"
  # end

  # def subscribed
  #   puts "subscribed!!!!===>>>=>=>=>"
  #   stream_from "messages"
  # end

  def unfollow
    # stop_all_streams
  end
end