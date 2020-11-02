class CreateConcepts < ActiveRecord::Migration[6.0]
  def change
    create_table :concepts do |t|
      t.string :title
      t.string :category

      t.timestamps
    end
  end
end
