require_relative '../lib/secret_diary'

### WARNING ###
# For the purposes of this exercise, you are testing after
# the code has been written. This means your tests are prone
# to false positives!
#
# Make sure your tests work by deleting the bodies of the
# methods in `secret_diary.rb`, like this:
#
# ```ruby
# def write(new_message)
# end
# ```
#
# If they fail, then you know your tests are working
# as expected.
### WARNING ###

RSpec.describe SecretDiary do
  let(:diary) { double "diary" }
  subject(:secret_diary) { described_class.new(diary)}
  context "when locked" do
    it "refuses to be read" do
      expect(secret_diary.read).to eq "Go away!"
    end

    pending "refuses to be written"
  end

  context "when unlocked" do
    pending "gets read"

    pending "gets written"
  end
end
