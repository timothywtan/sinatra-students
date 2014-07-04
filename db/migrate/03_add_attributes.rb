class AddAttributes< ActiveRecord::Migration
  def up
    add_column :students,:background_image,:string
    add_column :students,:twitter,:string
    add_column :students,:linkedin,:string
    add_column :students,:github ,:string
    add_column :students,:quote,:string
    add_column :students,:bio,:string
    add_column :students,:work,:string
    add_column :students,:work_title,:string
    add_column :students,:education,:string
  end

end