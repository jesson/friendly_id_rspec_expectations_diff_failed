require "spec_helper"

describe ProductsController do
  fixtures :products

  describe :index do
    it "should work success" do
      get :index
      assigns(:products).should =~ Product.page(nil)
    end
  end

end
