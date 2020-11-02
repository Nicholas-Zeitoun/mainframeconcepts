class CreateAcronyms < ActiveRecord::Migration[6.0]
  def change
    create_table :acronyms do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
