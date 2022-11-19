require_relative "product"

RSpec.describe Product do
    before(:all) do
        @p1 = Product.new({id: 1, name: "item 1", quantity: 3, price: 25})
    end

    context "should test values" do
        it "respond to id" do
            expect(@p1).to respond_to(:id)
        end
    
        it "respond to name" do
            expect(@p1).to respond_to(:name)
        end
    
        it "respond to quantity" do
            expect(@p1).to respond_to(:quantity)
        end
    
        it "respond to price" do
            expect(@p1).to respond_to(:price)
        end
    
        it "return correct attributes" do
            expect(@p1.id).to eq 1
            expect(@p1.name).to eq "item 1"
            expect(@p1.quantity).to eq 3
            expect(@p1.price).to eq 25
        end

        it "return the list of all products" do
            expect(Product.all).to eq([@p1])
        end
    
        it "return list of products name" do
            expect(Product.product_names).to eq([@p1.name])
        end
    end

    context "sold products" do
        it "returns the list of products sold out" do
            p2 = Product.new({id: 2, name: "item 2", quantity: 25, price: 25})
            p3 = Product.new({id: 2, name: "item 2", quantity: 0, price: 25})
            expect(Product.product_to_order).to eq([p3])
        end
    end

    context "inventory info" do
        it "return the total of the inventory" do
            p2 = Product.new({id: 2, name: "item 2", quantity: 5, price: 25})
            p3 = Product.new({id: 2, name: "item 2", quantity: 1, price: 25})
            expect(Product.total_inventory).to eq 34
        end
    end


end