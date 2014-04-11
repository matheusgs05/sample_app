class Requisitometrologico < ActiveRecord::Base
	validates :nome_do_requisito, uniqueness: true	
end
