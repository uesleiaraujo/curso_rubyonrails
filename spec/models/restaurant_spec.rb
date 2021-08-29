require 'rails_helper'

#RSpec.describe Restaurant do
#    context 'testing rspec' do
#        it do
#         expect(1).to eq 1
#        end    
#    end
#end

RSpec.describe Restaurant do
    it { should have_many(:products)}

    context 'testing total of products' do
        it 'returns total of products for a specific restaurant' do

            #restaurant = Restaurant.create(name: 'restaurant 1', address: 'end 1')
            restaurant = FactoryBot.create(:restaurant)

            product1 = Product.create(restaurant: restaurant, name: 'p1', value: 10)
            product2 = Product.create(restaurant: restaurant, name: 'p2', value: 10)
            product3 = Product.create(restaurant: restaurant, name: 'p3', value: 10)

            expect(restaurant.total_of_products).to eq 3
        end
    end
end