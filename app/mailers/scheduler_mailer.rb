class SchedulerMailer < ActionMailer::Base
  default from: "stevebschofield@gmail.com"

   def confirm_slot(appointment)
      @appointment = appointment
      @slot = appointment.slot

  #   # New Headers
  #   headers["Message-ID"] = "<appointment/#{@appointment.id}@your-app-name.example>"
  #   headers["In-Reply-To"] = "<slot/#{@slot.id}@your-app-name.example>"
  #   headers["References"] = "<slot/#{@slot.id}@your-app-name.example>"

      mail(to: "stevebschofield@gmail.com", subject: "Appointment Confirmed")
   end
end
