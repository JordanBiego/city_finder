class CreateCity < ActiveRecord::Migration[5.1]
  def up
    create_table :cities do |t|
      t.integer :state_id
      t.string :name
      t.string :state_acronym
    end
  end

  def down
    drop_table :cities do |t|
      t.integer :state_id
      t.string :name
      t.string :state_acronym
    end
  end
end
