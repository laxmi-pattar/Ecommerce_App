class ProductsController < InheritedResources::Base

	private

	def product_params
		params.require(:product).permit(:title, :description, :price, :published, :category_id)
	end

end
