class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :user_name, presence: true
  validates :age, presence: true
  validates :gender, presence: true
  validates :family, presence: true

  has_many :reviews, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :r_favorites, dependent: :destroy

  # 退会済みかの確認。is_deletedがfalseならtrueを返すようにしている
  def active_for_authentication?
    super && (is_deleted == false)
  end

  # enumの定義を設定
  enum gender: { male: 0, female: 1, non_binary: 2 }
end
