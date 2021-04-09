class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :name 
    with_options format: { with: /\A[0-9]+\z/, messsage: "は半角数字で入力してください"} do
      validates :tell_num
      validates :age
    end
    validates :age, format: { with: /\A\d{2}\z/, message: "は半角数字、２桁で入力してください" }
    validates :tell_num,  format: { with: /\A\d{10,11}\z/, message: "は半角数字、ハイフン無しで11桁以内で入力してください" }
  end
end
