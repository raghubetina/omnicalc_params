class CalculationsController < ApplicationController
  def flex_square
    # The incoming parameters for this action look like {"a_number"=>"5"}
    # Rails stores that hash in a variable called params
    
    @user_number = params["a_number"].to_i
    @squared_number = @user_number**2
    
    render("calculations/flexible_square_template.html.erb")
  end
  
  def square_form
    
    render("calculations/square_form_template.html.erb")
  end
  
  def process_square_form
    # The incoming parameters for this action look like {"the_user_number"=>"5"}
    # Rails stores that hash in a variable called params
    
    @the_number = params["the_user_number"].to_f
    @the_square = @the_number**2
    
    render("calculations/process_square_form_template.html.erb")
  end
end