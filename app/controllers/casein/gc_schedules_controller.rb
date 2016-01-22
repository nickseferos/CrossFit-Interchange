# Scaffolding generated by Casein v5.1.1.5

module Casein
  class GcSchedulesController < Casein::CaseinController
  
    ## optional filters for defining usage according to Casein::AdminUser access_levels
    # before_filter :needs_admin, :except => [:action1, :action2]
    # before_filter :needs_admin_or_current_user, :only => [:action1, :action2]
  
    def index
      @casein_page_title = 'Gc schedules'
  		@gc_schedules = GcSchedule.order(sort_order(:desktop)).paginate :page => params[:page]
    end
  
    def show
      @casein_page_title = 'View gc schedule'
      @gc_schedule = GcSchedule.find params[:id]
    end
  
    def new
      @casein_page_title = 'Add a new gc schedule'
    	@gc_schedule = GcSchedule.new
    end

    def create
      @gc_schedule = GcSchedule.new gc_schedule_params
    
      if @gc_schedule.save
        flash[:notice] = 'Gc schedule created'
        redirect_to casein_gc_schedules_path
      else
        flash.now[:warning] = 'There were problems when trying to create a new gc schedule'
        render :action => :new
      end
    end
  
    def update
      @casein_page_title = 'Update gc schedule'
      
      @gc_schedule = GcSchedule.find params[:id]
    
      if @gc_schedule.update_attributes gc_schedule_params
        flash[:notice] = 'Gc schedule has been updated'
        redirect_to casein_gc_schedules_path
      else
        flash.now[:warning] = 'There were problems when trying to update this gc schedule'
        render :action => :show
      end
    end
 
    def destroy
      @gc_schedule = GcSchedule.find params[:id]

      @gc_schedule.destroy
      flash[:notice] = 'Gc schedule has been deleted'
      redirect_to casein_gc_schedules_path
    end
  
    private
      
      def gc_schedule_params
        params.require(:gc_schedule).permit(:desktop, :mobile)
      end

  end
end