class CreateState < ActiveRecord::Migration[5.1]
  def up
    create_table :states do |t|
      t.string :name
      t.integer :total_cities
    end
  end

  def down
    drop_table :states do |t|
      t.string :name
      t.integer :total_cities
    end
  end
end
