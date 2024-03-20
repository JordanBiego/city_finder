class CreateCity < ActiveRecord::Migration[5.1]
  def up
    create_table :cities do |t|
      t.string :state_id
      t.string :name
    end
  end

  def down
    drop_table :cities do |t|
      t.string :state_id
      t.string :name
    end
  end
end
