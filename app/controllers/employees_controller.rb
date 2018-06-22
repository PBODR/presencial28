class EmployeesController < ApplicationController

  def create
    @employee = Employee.new(employee_params)
    @employee.save
    redirect_to @employee.company
  end


  private
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :company, :area)
  end
end
