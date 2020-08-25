class Breed < ApplicationRecord
  has_many :pets

  enum size: {
    mini: 0,
    p:    1,
    m:    2,
    g:    3,
    xg:   4,
  }
end
