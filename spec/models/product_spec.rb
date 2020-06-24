# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
 # Check belongs_to relationships
 it { should belong_to(:store) }
 it { should belong_to(:category) }

 it 'validates presence' do
     record = Product.new
     record.name = ''
     record.release_date = ''
     record.price = ''

     record.valid?
     expect(record.errors).not_to be_empty

     record.name = 'Lorem ipsum'
     record.release_date = Time.now
     record.price = 23
     record.category_id = 1
     record.store_id = 1
     record.valid?
     expect(record.errors).to be_empty
 end
end