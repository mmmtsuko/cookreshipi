Rails.application.routes.draw do
  get 'reshipi/index'
  root to: "reshipi#index"
end
