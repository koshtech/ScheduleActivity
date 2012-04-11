 FactoryGirl.define do
 	factory :activity do
	    product          "Batata"
	    date_time        "15/04/2012 15:30"
	    clientName       "Ze das couves"
	    clientAddress    "Rua das laranjeiras"
	    clientTelephone  "12345678"
	    clientEmail      "ze@ze.com.br"
	end
	factory :product do
		flavor      "Tangerina"
		description "Tangerina com calda caramelada"
	end
end