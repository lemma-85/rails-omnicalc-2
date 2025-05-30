class SubtractionController < ApplicationController
  def subtraction_form
    render({ :template => "subtraction_templates/subtraction_form" })
  end

  def sub_results
    @first_number = params.fetch("first_number").to_f
    @second_number = params.fetch("second_number").to_f
  
    @result = @second_number - @first_number
  
    render({ :template => "subtraction_templates/sub_results" })
  end
end
