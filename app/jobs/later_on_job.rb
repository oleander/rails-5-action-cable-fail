class LaterOnJob < ApplicationJob
  def perform(data)
    ActionCable.server.broadcast("messages:key", data: data)
  end
end