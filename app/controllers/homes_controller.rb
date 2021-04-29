class HomesController < ApplicationController
    def index
        @search = params[:search]

        @products = Product.all
        @categories = Category.all
        if @search.present?
            @products = @products.search(@search)
        end
        @products = @products.page(params[:page])
      end

    def show
        @products = Product.find(params[:id])
    end
end
