class CreateState < ActiveRecord::Migration[5.1]
  def up
    create_table :states do |t|
      t.string :name
    end
  end

  def down
    drop_table :states do |t|
      t.string :name
    end
  end
end
