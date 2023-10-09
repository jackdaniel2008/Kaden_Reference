class Item < ApplicationRecord
  has_one_attached :image

  validates :name, presence: true
  validates :introduction, presence: true
  validates :image, presence: true

  has_many :reviews, dependent: :destroy

  has_many :genre_tags, dependent: :destroy
  has_many :genres, through: :genre_tags, dependent: :destroy

  has_many :size_tags, dependent: :destroy
  has_many :sizes, through: :size_tags, dependent: :destroy

  has_many :people_tags, dependent: :destroy
  has_many :peoples, through: :people_tags, dependent: :destroy

  has_many :maker_tags, dependent: :destroy
  has_many :makers, through: :maker_tags, dependent: :destroy

  has_many :favorites, dependent: :destroy

  # 引数で渡されたユーザidがFavoritesテーブル内に存在（exists?）するかどうかを調べる。存在していればtrue、存在していなければfalse
  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
end
