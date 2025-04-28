class DivisionController < ApplicationController
  def division_form
    render({ :template => "div_templates/division_form" })
  end

  def divide_results
    @first_number = params.fetch("first_number").to_f
    @second_number = params.fetch("second_number").to_f

    if @second_number == 0
      @result = "Cannot divide by zero."
    else
      @result = @first_number / @second_number
    end

    render({ :template => "div_templates/divide_results" })
  end
end
