class Staff < ApplicationRecord
  has_one_attached :image

  validates :name, presence: { message: '：名前は必須項目です' },
                   uniqueness: { message: '：既に登録されている名前です' }
end
