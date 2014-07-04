class Student < ActiveRecord::Base

  before_create do
     self.slugify!
    end
    def slugify!
      self.slug = self.name.downcase.gsub(" ","-") 
    end

  # def slug
  #   student = Student.create
  #   # Student.find(params[:name]).downcase.gsub!(" ","-")
  #   # student.save
  # end 

  # def slugify!
    

end