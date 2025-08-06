Rails.application.routes.draw do
  get("/", { :controller => "dice", :action => "render_homepage" })

  get("/process_roll", { :controller => "dice", :action => "roll_flexible" })
end
