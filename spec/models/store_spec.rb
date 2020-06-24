# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Store, type: :model do
  # Check has_many relationships
  it { should have_many(:products) }
end