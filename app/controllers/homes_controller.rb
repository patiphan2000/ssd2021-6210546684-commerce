class HomesController < ApplicationController
    def index
        @search = params[:search]

        @products = Product.all
        @categories = Category.all
        @product = @product.search(@search) if @search.present?
      end

    def show
        @product = Product.find(params[:id])
    end
end
