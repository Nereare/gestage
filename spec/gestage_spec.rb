# frozen_string_literal: true

RSpec.describe Gestage do
  it 'has a version number' do
    expect(Gestage.version).not_to be nil
    expect(Gestage.version).to be_a String
  end
end
