class AddTopicToNotes < ActiveRecord::Migration[6.0]
  def change
    add_reference :notes, :topic, null: false, foreign_key: true
  end
end
