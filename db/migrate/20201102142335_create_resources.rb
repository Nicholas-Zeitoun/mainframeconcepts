class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :title
      t.string :category
      t.string :link

      t.timestamps
    end
  end
end
