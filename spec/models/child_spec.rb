require 'rails_helper'

RSpec.describe Child, type: :model do
  describe 'attributes' do
    it { should respond_to :name}
    it { should respond_to :rating}
  end

  describe 'sorting' do
    before(:each) do
      @child1 = Child.create(name: 'Frank', rating: 5)
      @child2 = Child.create(name: 'George', rating: 1)
    end

    it 'by naughtylevel' do
      naughty_children = Child.find_naughty_children
      expect(naughty_children.first).to eq(@child2)
    end
  end

end
