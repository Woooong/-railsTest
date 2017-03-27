Rails.application.routes.draw do
#board route
	get '/boards' => 'boards#index'
  	get '/boards/new' => 'boards#new'
	get '/boards/:id' => 'boards#show', as: :board
	get '/boards/:id/edit' => 'boards#edit', as: :edit_board
	get '/boards/:id/edit/chk' => 'boards#edit_chk', as: :edit_chk
	patch '/boards/:id' => 'boards#update'
  	post 'boards' => 'boards#create'
  	post 'comments' => 'boards#comment_create'
#board route end  
end
