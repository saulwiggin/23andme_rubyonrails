class GenomesController < ApplicationController
  def index
      @Genome = Genome.all
   end

   def new
      @Genome = Genome.new
   end

   def create
      @Genome = Genome.new(resume_params)

      if @Genome.save
         redirect_to genomes_path, notice: "The genome #{@Genome.name} has been uploaded."
      else
         render "new"
      end

   end

   def destroy
      @Genome = Genome.find(params[:id])
      @Genome.destroy
      redirect_to resumes_path, notice:  "The Genome #{@Genome.name} has been deleted."
   end

   private
      def resume_params
      params.require(:genome).permit(:name, :attachment)
   end
end
