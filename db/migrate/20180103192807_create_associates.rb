class CreateAssociates < ActiveRecord::Migration[5.1]
  def change
    create_table :associates do |t|
      t.belongs_to :user
      t.belongs_to :friend
      t.timestamps
    end
  end
end
