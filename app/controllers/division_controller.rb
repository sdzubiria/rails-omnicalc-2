class DivisionController < ApplicationController
  def show_division_form
    render({ :template => "div_templates/division_form" })
  end

  def divide_these
    @first_number = params.fetch("first_number", 0).to_f
    @second_number = params.fetch("second_num", 0).to_f
    @result = @second_number.zero? ? "Cannot divide by zero" : (@first_number / @second_number)
    render({ :template => "div_templates/divide_results" })
  end
end
