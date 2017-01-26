class Tcc < ActiveRecord::Base
  enum tipo: {estagio: 1, pesquisa: 2, trabalhador: 3}
  has_and_belongs_to_many :palavras
  belongs_to :aluno
  belongs_to :professor
  has_attached_file :arquivo, styles: {thumbnail: "60x60#"}
  validates_attachment :arquivo, content_type: { content_type: "application/pdf" }
end
