class Brainstorm < ActiveRecord::Base
  after_initialize :init

   def init
     self.color  ||= '#ffffff'
     self.no_people ||= 6
     self.no_ideas ||= 3
     self.date ||= Date.today.rfc3339
     self.start ||= Time.now
     self.end ||= self.start.advance(:hours => 1)
   end
end
