class AddColumnnameToTablename < ActiveRecord::Migration[6.1]
  def change
    add_column :tablenames, :columnname, :datatype
  end
end
