class LinksController < ApplicationController
  def show
    @link = Link.find_by(shortened: params[:shortr])
    redirect_to @link.destination
  end
end
