require 'rails_helper'

RSpec.describe Child, type: :model do
  describe 'attributes' do
    it { should respond_to :name}
    it { should respond_to :rating}
  end

  describe 'sorting' do
    before(:each) do
      @child1 = Child.create(name: 'Han', rating: 5)
      @child2 = Child.create(name: 'George', rating: 1)
      @child3 = Child.create(name: 'Lucas', rating: 7)
    end

    it 'by naughty level' do
      naughty_children = Child.find_naughty_children
      expect(naughty_children.first).to eq(@child2)
    end

    it 'by nice level' do
      nice_children = Child.find_nice_children
      expect(nice_children.first).to eq(@child3)
    end

  end

end
