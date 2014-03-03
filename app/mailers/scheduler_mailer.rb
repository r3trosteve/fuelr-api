class SchedulerMailer < ActionMailer::Base
  default from: "stevebschofield@gmail.com"

   def confirm_slot(user)#, slot, appointment)
     @user = user
  #   @slot = slot
  #   @appointment = appointment

  #   # New Headers
  #   headers["Message-ID"] = "<appointment/#{@appointment.id}@your-app-name.example>"
  #   headers["In-Reply-To"] = "<slot/#{@slot.id}@your-app-name.example>"
  #   headers["References"] = "<slot/#{@slot.id}@your-app-name.example>"

     mail(to: user.email, subject: "Appointment Confirmed")
   end
end
