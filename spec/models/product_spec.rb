require 'spec_helper'

describe Product do
  context "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :category_id }

    it "when name is too long" do
      subject.name = "a" * 31
      expect(subject).to have(1).error_on(:name)
    end
  end
end
