class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.create(params[])
  end

  def destroy
    @dose = Dose.find(params[:id])
  end
end
