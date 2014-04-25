class CreateSharelinks < ActiveRecord::Migration
  def change
    create_table :sharelinks do |t|
      t.string :link
      t.string :comment

      t.timestamps
    end
  end
end
