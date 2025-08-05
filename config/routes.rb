Rails.application.routes.draw do
  get("/", { :controller => "dice", :action => "render_homepage" })

  get("/dice/:number_of_dice/:how_many_sides", { :controller => "dice", :action => "roll_flexible" })
end
