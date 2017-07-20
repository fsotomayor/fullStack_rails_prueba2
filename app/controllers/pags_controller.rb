class PagsController < ApplicationController
  def principal
  	@usuarios = Item.all
  end

  def secundaria
  end
end
