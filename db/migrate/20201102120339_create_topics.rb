class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :topics do |t|
      t.string :title
      t.text :overview
      t.references :concept, null: false, foreign_key: true

      t.timestamps
    end
  end
end
