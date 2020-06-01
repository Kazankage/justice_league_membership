class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :powers
      t.string :membership

      t.timestamps
    end
  end
end
