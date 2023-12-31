class News < ApplicationRecord
  validates :title, presence: { message: '：タイトルは必須項目です' }

end
