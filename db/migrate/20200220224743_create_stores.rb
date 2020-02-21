class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :shoe
      t.string :jecket
      t.string :hat
      t.string :kid
      t.string :food

      t.timestamps
    end
  end
end
