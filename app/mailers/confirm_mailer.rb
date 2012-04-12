class ConfirmMailer < ActionMailer::Base
 def activity_confirmation()  
    mail(:to => "anna.cruz@gmail.com", :subject => "Ha uma reserva nova!", :from => "anna.cruz@gmail.com")  
  end  
end
