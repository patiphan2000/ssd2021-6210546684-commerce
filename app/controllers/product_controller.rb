class ProductController < ApplicationController
    
    before_action :authenticate_user!

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
