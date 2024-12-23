class CreateClubes < ActiveRecord::Migration[7.2]
  def change
    create_table :clubes do |t|
      t.string :nome

      t.timestamps
    end
  end
end
