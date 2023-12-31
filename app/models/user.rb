class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  before_destroy :prevent_destroy_admin

  def prevent_destroy_admin
    if self.id == 1
      errors.add(:base, "このユーザーは削除できません。")
      throw :abort
    end
  end

end
