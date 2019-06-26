class Funcionario < ActiveRecord::Base
    has_secure_password
   validates :password, presence: true, length: {minimum: 6}
    validates :matricula, presence: true, length: {maximun: 8, minimum: 3}
  #  validates :celular, presence: true, length: {maximun: 11, minimum: 10}
   # has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "120x90#" }
end
