require 'rails_helper'

RSpec.describe Gift, type: :model do
  describe 'attributes' do
    it { should respond_to :child_id}
    it { should respond_to :name}
    it { should respond_to :rating}
  end

  describe 'sorting' do
    before(:each) do
      @child1 = Child.create(name: 'Han', rating: 5)
      @child2 = Child.create(name: 'George', rating: 1)
      @child3 = Child.create(name: 'Lucas', rating: 7)
      @gift1 = Gift.create(name: 'Blaster pistol', rating: 8, child_id: @child1.id)
      @gift2 = Gift.create(name: 'Ewok', rating: 10, child_id: @child2.id)
      @gift3 = Gift.create(name: 'A bat', rating: 3, child_id: @child3.id)
    end
    it 'by naughty childs gift' do
      naughty_child_gifts = Gift.find_naughty_children_gifts
      expect(naughty_child_gifts.first).to eq(@gift2)
    end

    it 'by nice childs gift' do
      nice_child_gifts = Gift.find_nice_children_gifts
      expect(nice_child_gifts.first).to eq(@gift3)
    end
  end

end
