# frozen_string_literal: true

# rubocop:disable Layout/LineLength
describe Array do
  # An implicitly defined 'subject' is available when the outermost example group is a class.
  # 'subject' will be an instance of that class.
  # https://relishapp.com/rspec/rspec-core/v/2-11/docs/subject/implicitly-defined-subject

  context 'when subject is implicitly defined' do
    # type matchers:
    # https://relishapp.com/rspec/rspec-expectations/v/3-9/docs/built-in-matchers/type-matchers
    it 'should be an Array' do
      expect(subject).to be_a(Array)
    end
    # One-line syntax that does the same as the above test.
    # Look at the auto-generated doc string when this test is run (in terminal).
    it { is_expected.to be_a(Array) }
  end

  # There are many predicate matchers to use, for example:
  # https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/predicate-matchers
  it 'should be empty' do
    expect(subject).to be_empty
  end
  # One-line syntax that does the same as the above test.
  # Look at the auto-generated doc string when this test file is run (in terminal).
  it { is_expected.to be_empty }

  context 'when a let variable is declared inside a context block' do
    let(:numbers) { [3, 8, 9] }

    it 'should change the length from 3 to 2' do
      expect(numbers.length).to eq(3)
      numbers.pop
      expect(numbers.length).to eq(2)
    end
  end

  # Look at the order of these 5 tests when this test file is run (in terminal).
  # Why do you think they are in a different order than these tests are written?

  # The tests output in a different order, because each group runs its examples before running its nested example groups, even if the nested groups are defined before the examples.
  # https://relishapp.com/rspec/rspec-core/v/3-9/docs/command-line/order

  # Please note: one-line tests are only recommended when the matcher aligns exactly with the doc string.
  # However, many ruby-ists prefer explicitly writing out the test & not using one-line syntax.
end

# ASSIGNMENT
describe Array do
  context 'when updating an implicit subject' do
    # remove the 'x' before running this test
    xit 'should be empty then have length of 1' do
      expect(subject).to be_empty
      # update the implicit subject to make this test pass
      expect(subject.length).to eq(1)
    end
  end

  context 'when using one let variable on two tests' do
    # Make a let variable that will pass both tests.

    # remove the 'x' before running this test
    xit 'should have length of 3' do
      expect(lucky_numbers.length).to eq(3)
    end

    # remove the 'x' before running this test
    xit 'should have sum of 42' do
      expect(lucky_numbers.sum).to eq(42)
    end
  end
end
# rubocop:enable Layout/LineLength
