class ResourcesController < ApplicationController
  before_action :set_resource, only: [:show, :edit, :update]

  def index
    @resources = Resource.all
  end

  def new
  end

  def show
  end

  def edit
  end

  def new
    @parent  = parent
  end

  def create
    @parent  = parent
    @resource = @parent.resources.new(resource_params)
    # @resource = @parent.resources.new(resource_params)
    if @resource.save
      redirect_to request.referrer
    else
      render :back
    end
  end

  def destroy
    raise
    @resource.destroy
    redirect_to request.referrer
  end

  private

  def set_resource
    @resource = Resource.find(params[:id])
  end

  def parent
     return Concept.find params[:concept_id] if params[:concept_id]
     Topic.find params[:topic_id] if params[:topic_id]
  end

  def resource_params
     params.require(:resource).permit(:title, :category, :link)
  end
end
