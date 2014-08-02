class AddEmailAddress < ActiveRecord::Migration
  def up
    add_column :customers, :email, :string
  end
  
  def down
    remove_columns :customers, :email
  end
end
