require 'rails_helper'

RSpec.describe Person, type: :model do
  it 'FactoryBot should be valid' do
    expect(create(:person, :active)).to be_valid
  end

  describe '' do
    it 'example 1' do
    end
  end
end
