require 'spec_helper'

describe "Products" do
	subject { page }
  describe "new product" do
  	before { visit sabores_path }
  	let(:submit){ "Criar sabor"}

  	describe "with valid information" do  
      before do
        fill_in "product_flavor",      with: "Morango"
        fill_in "product_description", with: "Morango com leite condensado"
      end

      it "should create a product" do
        expect { click_button submit }.to change(Product, :count).by(1)
      end
    end
  end

  describe "show activities" do
    let(:product) { FactoryGirl.create(:product) }
    before { visit listasabores_path(product) }

    it { should have_selector('h2', text: product.flavor) }
  end
end