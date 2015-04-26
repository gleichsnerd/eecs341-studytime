class SessionsController < ApplicationController
  def new
  end

  def create
      student = Student.find_by(email: params[:session][:email].downcase)
      if student && student.authenticate(params[:session][:password])
          #Golden, time to login and redirect to student#show
      else
          flash.now[:danger] = 'Invalid email or password'
          render 'new'
      end
  end

  def destroy
  end

end
