Sequel.migration do
  up do
    create_table(:students) do
      primary_key :id
      String :name, :null=>false
    end
  end

  down do
    drop_table(:students)
  end
end