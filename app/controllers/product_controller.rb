class ProductController < ApplicationController
    def index
        @product = Product.all
    end

    def show
        @product = Product.find(params[:id])
    end

    def new
        @product = Product.new
    end

end
