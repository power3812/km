Rails.application.routes.draw do
  namespace 'api', {format:'json'} do
    resources 'device'
    resources 'shop'
  end
  get 'pages/index'
  post 'pages/create'
end
