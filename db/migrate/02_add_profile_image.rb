class AddProfileImage< ActiveRecord::Migration

  def up
    add_column :students, :profile_image, :string
  end


end
