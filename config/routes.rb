Rails.application.routes.draw do

  get("/", { :controller => "application", :action => "index" })
  get("/about_us", { :controller => "application", :action => "about" })

  # Routes for the Senior resource:

  # CREATE
  post("/insert_senior", { :controller => "seniors", :action => "create" })
          
  # READ
  get("/seniors", { :controller => "seniors", :action => "index" })
  
  get("/seniors/:path_id", { :controller => "seniors", :action => "show" })
  
  # UPDATE
  
  post("/modify_senior/:path_id", { :controller => "seniors", :action => "update" })
  
  # DELETE
  get("/delete_senior/:path_id", { :controller => "seniors", :action => "destroy" })

  #------------------------------

end
