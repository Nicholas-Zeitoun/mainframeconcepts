class AddResourcableToResources < ActiveRecord::Migration[6.0]
  def change
    add_reference :resources, :resourcable, polymorphic: true, index: true
  end
end
