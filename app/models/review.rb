class Review < ApplicationRecord
  belongs_to :user
  belongs_to :item

  has_many :comments, dependent: :destroy
  has_many :r_favorites, dependent: :destroy

  # 空をバリデーション、文字数制限
  validates :body, presence: true, length: { maximum: 100 }

  # 引数で渡されたユーザidがR_favoritesテーブル内に存在（exists?）するかどうかを調べる。存在していればtrue、存在していなければfalse
  def r_favorited_by?(user)
    r_favorites.exists?(user_id: user.id)
  end
end
