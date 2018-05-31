Rails.application.routes.draw do
  devise_for :users
  root to: "spin#carousel"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get("/about", {:controller=> "spin", :action=> "about"})

get('/', {:controller=>'spin', :action=>'carousel'})



get('/new', {:controller=>'spin', :action=>'new'})
get('/create_article', {:controller=>'spin', :action=>'create'})
get('/closet', {:controller=>'spin', :action=>'show'})

get('/closet/:id/edit', {:controller=>'spin', :action=>'edit'})
get('/update_closet/:id', {:controller=>'spin', :action=>'update_closet'})

get('/mark_worn', {:controller=>'spin', :action=>'mark_worn'})



end
