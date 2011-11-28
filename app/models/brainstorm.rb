class Brainstorm < ActiveRecord::Base
  after_initialize :init

   def init
     self.color  ||= '#ffffff'
     self.no_people ||= 6
     self.no_ideas ||= 3
     self.date ||= Date.today.rfc3339
     time = Time.now
     self.start ||= time_string(time)
     self.end ||= time_string(time.advance(:hours => 1))
   end
   
private   
   def time_string(time)
     time.strftime("%H:%M")
   end
 
   
     
end
