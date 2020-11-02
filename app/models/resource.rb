class Resource < ApplicationRecord
  belongs_to :resourcable, :polymorphic => true
end
