class Tcc < ActiveRecord::Base
  enum tipo: {estagio: 1, pesquisa: 2, trabalhador: 3}
end
