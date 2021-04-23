class HomesController < ApplicationController
    def index
        @search = params[:search]

        @products = Product.all
        @categories = Category.all
        @products = @products.search(@search) if @search.present?
        @products = @products.page(params[:page])
      end

    def show
        @products = Product.find(params[:id])
    end
end
