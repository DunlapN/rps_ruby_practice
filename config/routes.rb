Rails.application.routes.draw do
  get("/play/:the_move", { :controller => "game", :action => "rps" })

  get("/console", { :controller => "development", :action => "console" })
end
