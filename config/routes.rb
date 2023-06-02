Rails.application.routes.draw do
  root 'ocr#index'
  post 'ocr/file_scan'
  get 'ocr/file_scan'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
