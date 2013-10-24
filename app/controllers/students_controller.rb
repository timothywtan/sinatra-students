class StudentsController < ApplicationController

  get '/' do
    @students = Student.all
    erb :'students/index'
  end

end