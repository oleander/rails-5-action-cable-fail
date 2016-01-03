Rails.application.routes.draw do
  get "pages/index"
  mount ActionCable.server => "/cable"
end
