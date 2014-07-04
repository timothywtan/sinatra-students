class AddSlugToStudents < ActiveRecord::Migration
  def up
    add_column :students, :slug, :string
  end
  
end