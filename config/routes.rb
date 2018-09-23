Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'contact', controller: :frontend, action: :contact, alias: 'contact'
  get '/', controller: :frontend, action: :index, alias: 'index'
  get 'login', controller: :frontend, action: :login, alias: 'login'
  post 'login', controller: :frontend, action: :login_validation, alias: 'login_validation'
  get 'register', controller: :frontend, action: :register, alias: 'register'
  post 'register', controller: :frontend, action: :register_post, alias: 'register_post'

  get 'feedback/view', controller: :frontend, action: :feedback_view, alias: 'feedback_view'

  get 'parking/add', controller: :parking, action: :add, alias: 'parking_add'
  get 'parking/delete', controller: :parking, action: :delete, alias: 'parking_delete'
  get 'parking/edit', controller: :parking, action: :edit, alias: 'parking_edit'
  get 'parking/view', controller: :parking, action: :view, alias: 'parking_view'

  get 'reservation/confirm', controller: :reservation, action: :confirm, alias: 'reservation_confirm'
  get 'reservation/review', controller: :reservation, action: :review, alias: 'reservation_review'
  post 'reservation/review', controller: :reservation, action: :review_post, alias: 'reservation_review_post'
  get 'reservation/search', controller: :reservation, action: :search, alias: 'reservation_search'
  get 'reservation/view', controller: :reservation, action: :view, alias: 'reservation_view'

  get 'extra-service/view', controller: :service_aditional, action: :view, alias: 'service_aditional_view'
  
  get 'comment_parking/view', controller: :comment_parking, action: :view, alias: 'comment_parking_view'
  

  
end
