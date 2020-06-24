# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do
 # Check belongs_to relationships
 it { should have_many(:product) }
end