class Admin::EventsController < ApplicationController
  
  def index
    @events = Event.all.page(params[:page]).per(10)
  end
  
  def show
    @event = Event.find(params[:id])
  end
  
  def new
    @event = Event.new
  end
  
  def create
    @event = Event.new(event_parameter)
    if @event.save
       redirect_to admin_events_path, success: "作成しました"
    else
      flash.now[:danger] = '作成に失敗しました。'
      render 'new'
    end
  end
  
  def edit
    @event = Event.find(params[:id])
  end
  
  def update
    @event = Event.find(params[:id])
    if @event.update(event_parameter)
       redirect_to admin_event_path(@event), success: "更新しました"
    else
      flash.now[:danger] = '更新に失敗しました。'
      render 'edit'
    end
  end

  private

  def event_parameter
    params.require(:event).permit(:title, :content, :start_time)
  end

  
end
