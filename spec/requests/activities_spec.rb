require 'spec_helper'

describe "Activities" do
	subject { page }
  describe "new activity" do
  	before { visit reservas_path }
  	let(:submit){ "Criar reserva"}

  	describe "with valid information" do  
      before do
        fill_in "activity_product",          with: "Morango"
        fill_in "activity_date_tim",        with: "15/04/2012 15:30"
        fill_in "activity_clientName",      with: "Ze das couves"
        fill_in "activity_clientAddress",   with: "Rua das laranjeiras"
        fill_in "activity_clientTelephone", with: "12345678"
        fill_in "activity_clientEmail",     with: "ze@ze.com.br"
      end

      it "should create a activity" do
        expect { click_button submit }.to change(Activity, :count).by(1)
      end

    end
  end

  describe "show activities" do
    let(:activity) { FactoryGirl.create(:activity) }
    before { visit listagem_path(activity) }
    
    it { should have_selector('li', text: activity.product) }
  end

end
