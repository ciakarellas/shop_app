require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'when data provided is valid' do
    let(:params) { { name: 'Sneakers', price: 49.99, quantity: 4 } }
  
    it 'saves the instance' do
      expect(described_class.new(params).save!).to eq true
    end
  
    it { expect { described_class.new(params).save! }.to change { Product.all.size }.by(1) }
  end

  context 'when data provided is invalid' do
    let(:params) { { name: '', price: 4.99, quantity: 40 } }
  
    it 'error with saving instance' do
      expect {described_class.new(params).save!}.to raise_error("Validation failed: Name can't be blank")
    end
  
  end
end
