# StudentsController inherits from ApplicationController
# so any settings defined there will apply to this controller.
class StudentsController < ApplicationController
  # GET '/'
  get '/' do
    # Homepage action to display the student index.
    # Load all the students into an instance variable.
    # We use the ::all method on the Student class, provided by Sequel
    @students = Student.all
    
    erb :'/students/index' # render the index.erb within app/views/students
  end

  # Build the rest of the routes here.

  # GET '/students/new'
  # POST '/students'
  # GET '/students/avi-flombaum'
  # GET '/students/avi-flombaum/edit'
  # POST '/students/avi-flombaum'


  get '/students/:slug' do 
     @students = Student.find_by(:slug =>params[:slug])

     erb :'/students/show'
  
  end

  get '/students/:slug/edit' do 
    @womp=Student.all
     @students = Student.find_by(:slug =>params[:slug])
     erb :'/students/edit'
  end

  post '/students/:slug' do
    @student = Student.find_by(:slug => params[:slug])
    @student.update(params[:student])
    redirect "/students/#{@student.slug}"
  end


  get '/student/new' do
    erb :'students/new'

  end 

  post '/students' do
    @student=Student.create(params[:student])
    redirect "/"
  end



  get '/students/delete' do
     @student = Student.find_by(:slug => params[:slug])
    

    erb :'students/delete'

  end 



  post '/students/delete' do
    @student = Student.find_by(:slug => params[:slug])
    @student.delete(params[:student])
    redirect "/"
  end


end
