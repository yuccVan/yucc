class ProductsController < ApplicationController
  def index
    @products = Product.all
    @today = Time.now.strftime("%H")
    if  @today.to_i >= 6 and @today.to_i <=12
      flash[:notice] = "早上好"
    elsif  @today.to_i > 12 and @today.to_i <=18
      flash[:notice] = "下午好"
    elsif  @today.to_i > 18 and @today.to_i <6
      flash[:notice] = "晚上好"
    end

  end
  def show
    @product = Product.find(params[:id])

  end
  def add_to_cart
    @product = Product.find(params[:id])
    if !current_cart.products.include?(@product)
          current_cart.add_product_to_cart(@product)

          flash[:notice] = "你已成功将 #{@product.title} 加入购物车"
     else
         flash[:warning] = "你的购物车内已有此物品"
     end
    redirect_to :root
  end
  def check_next
    @product = Product.find(params[:id])
    if !current_cart.products.include?(@product)
      current_cart.add_product_to_cart(@product)

      flash[:notice] = "你已成功将 #{@product.title} 加入购物车"
    else
      flash[:warning] = "你的购物车内已有此物品"
    end
    redirect_to :root

  end
end
