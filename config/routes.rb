Rails.application.routes.draw do

  get("/", {:controller => "zebra", :action => "lion"})

  get("/dice/2/6", {:controller => "zebra", :action => "girffae"})

  get("/dice/2/10", {:controller => "zebra", :action => "dice"})

  get("/dice/1/20", {:controller => "zebra", :action => "bird"})

  get("/dice/5/4", {:controller => "zebra", :action => "mouse"})

 get("/dice/:random/:number", {:controller => "zebra", :action => "generator"})

end
