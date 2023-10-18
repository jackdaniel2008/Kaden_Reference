class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :review

  # 空をバリデーション、文字数制限
  validates :body, presence: true, length: {maximum: 100}
end
