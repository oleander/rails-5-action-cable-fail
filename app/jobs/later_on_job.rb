class LaterOnJob < ApplicationJob
  def perform(partial, raw_locals, key)
    locals = Marshal.load(raw_locals)
    locals.each_pair do |key, value|
      if value.is_a?(ActiveRecord::Relation)
        locals[key] = value.to_a
      end
    end

    data = ApplicationController.render({
      partial: partial, 
      locals: locals
    })

    sleep 5
    ActionCable.server.broadcast("messages", data: data)
  end
end