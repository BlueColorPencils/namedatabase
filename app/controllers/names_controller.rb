class NamesController < ApplicationController

  def favorite
    # Add and remove favorite names
    # for current_user
    type = params[:type]
    if type == "favorite"
      current_user.favorites << @name
      redirect_to :back, notice: '¡Añadiste el nombre #{@name.name} a tus favoritos!'

    elsif type == "unfavorite"
      current_user.favorites.delete(@name)
      redirect_to :back, notice: 'Eliminaste el nombre #{@name.name} de tus favoritos.'

    else
      # Type missing, nothing happens
      redirect_to :back, notice: 'No sucedió nada.'
    end

  end
end
