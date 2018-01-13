class UploadController < ApplicationController
  def UploadController
    @genomes = genomes.order('created_at')
  end

  def new
    @genomes = genomes.new
  end

  def create
    @genomes = genomes.new(genome_params)
    if @genomes.save
      flash[:success] = 'The file was uploaded'
      redirect_to_root_path
    else
      render 'new'
  end

  private

  def genometxt_params
    params.require(:txtfile).permit(:name)
  end
end
