class Product
    attr_reader :id, :name, :quantity, :price
    @@products = []
    def initialize(data={})
        @id = data[:id] || 0
        @name = data[:name]
        @quantity = data[:quantity]
        @price = data[:price]
        @@products << self
    end

    def self.all
        @@products
    end

    def self.product_names
        #@@products.map { |product| product.name}
        @@products.map(&:name)
    end

    def self.product_to_order
        #@@products.reject { |product| product.quantity > 0}
        @@products.select { |product| product.quantity <= 0}
    end

    def self.total_inventory
        # @@products.reduce(0) { |acc, product| acc + product.quantity * product.price}
        @@products.inject(0){ |sum, x| sum + x.quantity }
    end
end