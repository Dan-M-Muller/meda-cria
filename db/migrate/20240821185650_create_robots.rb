class CreateRobots < ActiveRecord::Migration[7.1]
  def change
    create_table :robots do |t|
      t.string :name
      t.integer :memory, :default => 3;

      t.timestamps
    end
  end
end
