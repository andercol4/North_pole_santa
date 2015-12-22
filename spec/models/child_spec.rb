require 'rails_helper'

RSpec.describe Child, type: :model do
  describe 'attributes' do
    it { should respond_to :name}
    it { should respond_to :rating}
  end

  describe 'sorting' do

    it 'by naughtylevel' do
      naughty_children = Child.find_naughty_children
      expect(naughty_children.first).to eq(@child2)
    end
  end

end
