class CartsController < ApplicationController
    def update

    end

    def show
  
    end
    def destroy
        #destroy_all is methode comes from ActiveRecord::Base
        cart.product_items.destroy_all
        redirect_to products_path
    end

    def cart
        @cart ||= user_signed_in? ? current_user.cart : Cart.find_by(params[:id])
    end
end
