class Pet < ApplicationRecord
  belongs_to :breed
  belongs_to :user
  has_one :subs_product, dependent: :destroy

  validates :weight, :neutered, :date_birth, :sex, :name, :user, :breed, presence: true
  validates :sex, inclusion: { in: %w(feminino masculino),
    message: "%{value} is not a valid sex" }
  validates :size, presence: true, if: :srd?

  def srd?
    self.breed == Breed.find_by(name: "SRD")
  end

  enum size: {
    mini: 0,
    p:    1,
    m:    2,
    g:    3,
    xg:   4
  }
end
