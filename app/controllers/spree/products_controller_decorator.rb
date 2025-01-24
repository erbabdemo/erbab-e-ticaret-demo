module Spree
  module ProductsControllerDecorator
    def boost_product
      @product = Spree::Product.where("name = '#{params[:product_name]}'").first

      if @product.boost!
        redirect_to @product, notice: "Product boosted!"
      else
      end
    end
  end

  ProductsController.prepend(ProductsControllerDecorator)
end