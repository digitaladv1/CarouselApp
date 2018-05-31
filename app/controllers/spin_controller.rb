class SpinController<ApplicationController

def about
render("about.html.erb")
end

def new
render("new.html.erb")
end

def create
  photo = Photo.new
  photo.image = params['image']
photo.caption = params['caption']
photo.category = params['category']
photo.save
redirect_to("/closet")
end

 def show
   render("closet.html.erb")
 end

 def edit
   @photo = Photo.find(params['id'])
   render("edit.html.erb")
 end
 def update_closet
   photo = Photo.find(params['id'])
   photo.image = params['image']
 photo.caption = params['caption']
 photo.category = params['category']
 photo.save
 redirect_to("/closet")
 end

 def carousel
   render("index.html.erb")
 end
def mark_worn
  tracker= Tracker.new
tracker.item_id=params['top']
  tracker.time_last_worn = DateTime.now
tracker.save

tracker= Tracker.new
tracker.item_id=params['bottom']
tracker.time_last_worn = DateTime.now
tracker.save

tracker= Tracker.new
tracker.item_id=params['footwear']
tracker.time_last_worn = DateTime.now
tracker.save

redirect_to("/")

end

end
