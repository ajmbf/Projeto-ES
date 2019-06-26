class Animal < ActiveRecord::Base
 
    has_attached_file :foto, :styles => { :small => "300x300>" },
     :url  => "/assets/products/:id/:style/:basename.:extension",
     :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
      validates_attachment_content_type :foto, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
