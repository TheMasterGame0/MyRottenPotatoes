class Movie < ApplicationRecord
  validates :titulo, presence: true
  validates :classificacao, presence: true
  validates :descricao, presence: true, length: { minimum: 10 }
  validates :dataLancamento, presence: true
end
