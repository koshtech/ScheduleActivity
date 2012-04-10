require 'spec_helper'

describe Product do
  before do
  	@product             = Product.new
  	@product.flavor      = "Morango"
	@product.description = "Morango com leite condensado"  	
  end

  subject { @product }
  it { should respond_to(:flavor) }
  it { should respond_to(:description)}

end
