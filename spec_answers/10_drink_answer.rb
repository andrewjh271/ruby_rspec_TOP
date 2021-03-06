# frozen_string_literal: true

require_relative '../lib/10_drink'

describe Drink do
  # For both contexts, write a subject & 2 tests that expresses each of the following statements

  context 'when my drink is new' do
    subject(:my_drink) { described_class.new('tea') }

    # remove the 'x' before running this test
    it 'should have 16 ounces' do
      expect(my_drink.ounces).to eq(16)
    end

    # remove the 'x' before running this test
    it 'should be full' do
      expect(my_drink.full?).to be true
    end
  end

  context 'when my drink only has 12 ounces' do
    subject(:my_drink) { described_class.new('tea', 12) }

    # remove the 'x' before running this test
    it 'should have 12 ounces' do
      expect(my_drink.ounces).to eq(12)
    end

    # remove the 'x' before running this test
    it 'should not be full' do
      expect(my_drink.full?).to be false
    end
  end
end
