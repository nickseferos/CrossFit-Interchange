class JournalsController < ApplicationController
  def index
  end

  def new
  	@journal = Journal.new
  end

  def show
  	
  end

  def create
  	@journal = Journal.new(journal_params)
  end

  def update
  	
  end

  def destroy
  	
  end

  private

  def journals_params
  	params.require(:journal).permit(:date, :workout, :length)
  end
end
