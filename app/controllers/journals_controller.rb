class JournalsController < ApplicationController
	
	before_filter :authenticate_user!
	before_action :find_journal, only: [:show, :update, :edit, :destroy]

  def index
  end

  def new
  	@journal = Journal.new
  end

  def show
  	
  end

  def create
  	@journal = Journal.new(journal_params)
  	if @journal.save
  		redirect_to @journal
  	else
  		render 'new'
  	end
  end

  def update
  	
  end

  def destroy
  	
  end

  private

  def journal_params
  	params.require(:journal).permit(:date, :workout, :length)
  end

  def find_journal
  	@journal = Journal.find(params[:id])
  end
end
