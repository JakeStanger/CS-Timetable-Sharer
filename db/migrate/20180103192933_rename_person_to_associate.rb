class RenamePersonToAssociate < ActiveRecord::Migration[5.1]
  def change
    rename_table :people, :associates
  end
end
