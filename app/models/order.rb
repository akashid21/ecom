class Order < ApplicationRecord
  belongs_to :product
  belongs_to :client, foreign_key: 'client_id'
end
