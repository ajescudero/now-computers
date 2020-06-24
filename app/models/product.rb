class Product < ApplicationRecord
  include ActiveModel::Validations

  validates_presence_of :name, :release_date, :price

  belongs_to :store
  belongs_to :category

end
