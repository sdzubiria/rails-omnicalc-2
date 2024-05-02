Rails.application.routes.draw do
  get("/", { :controller => "addition", :action => "show_addition_form" })
  get("/add", { :controller => "addition", :action => "show_addition_form" })
  post("/wizard_add", { :controller => "addition", :action => "add_these" })

  get("/subtract", { :controller => "subtraction", :action => "show_sub_form" })
  post("/wizard_subtract", { :controller => "subtraction", :action => "subtract_these" })

  get("/multiply", { :controller => "multiplication", :action => "show_multiplication_form" })
  post("/wizard_multiply", { :controller => "multiplication", :action => "multiply_these" })

  get("/divide", { :controller => "division", :action => "show_division_form" })
  post("/wizard_divide", { :controller => "division", :action => "divide_these" })
end
