Rails.application.routes.draw do
  get 'welcome/index'
  #get 'notifications/send_email'
  root 'welcome#index' # Replace 'welcome#index' with your desired root route

  post 'send_email', to: 'notifications#send_email'
end
