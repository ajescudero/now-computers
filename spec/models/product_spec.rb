# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
 # Check belongs_to relationships
 it { should belong_to(:store) }
 it { should belong_to(:category) }
end