class AdditionController < ApplicationController
  def addition_form
    render({ :template => "addition_templates/addition_form" })
  end

  def add_results
    @first_number = params.fetch("first_number",0).to_f
    @second_number = params.fetch("second_num",0).to_f

    @result = @first_number + @second_number

    render({ :template => "addition_templates/add_results" })
  end
end
