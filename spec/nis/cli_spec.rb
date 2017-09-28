require 'spec_helper'

RSpec.describe Nis::Cli do
  it 'has a version number' do
    expect(Nis::Cli::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
