# frozen_string_literal: true

require_relative '../lib/11_dog'
require_relative '../spec/11_shared_example_spec'

# rubocop:disable Layout/LineLength

# Not only will the class being tested be located in a different file,
# but there are multiple classes for this example. All files begin with '11_'

describe Dog do
  subject(:toby) { described_class.new('Toby', nil, 'brown') }

  # Check out the file: 11_shared_examples_spec.rb
  # This test references that file's first test in the 'include_examples' line
  # The shared_example_spec file has further information
  context 'when Dog is a child class of Pet' do
    include_examples 'base class method name'
  end

  context 'when dog has name and color, but no breed' do
    # https://relishapp.com/rspec/rspec-expectations/v/3-9/docs/built-in-matchers/have-attributes-matcher
    it 'should have name, breed & color attributes' do
      expect(subject).to have_attributes(name: 'Toby', breed: nil, color: 'brown')
    end
  end

  context 'when using magic matchers' do
    # When using a method that returns a boolean value & does not take any parameters, you can use magic matchers
    # http://testing-for-beginners.rubymonstas.org/rspec/matchers.html
    it 'should be sleeping' do
      expect(toby).to be_sleeping
    end
  end
end

# ASSIGNMENT - complete either Cat or Dog assignment

describe Dog do
  # create a subject with your choice of cat name and optional breed/color

  # write a test using the second shared_example to test that dog should respond to talk
  context '' do
  end

  # remove the 'x' before running this test
  xit 'should not be barking' do
  end
end
# rubocop:enable Layout/LineLength
