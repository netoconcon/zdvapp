class Conflict < ApplicationRecord
  belongs_to :user
  belongs_to :mediator
end
