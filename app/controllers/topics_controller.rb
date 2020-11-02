class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @concept = Concept.find(params[:concept_id])
    @topic = Topic.new
  end

  def edit
  end

  def create
    @topic = Topic.new(topic_params)
    @concept = Concept.find(params[:concept_id])
    @topic.concept = @concept
    if @topic.save
      redirect_to topic_path(@topic)
    else
      render :new
    end
  end

  def update
    if @topic.update(topic_params)
      redirect_to @topic, notice: 'Topic was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @topic.destroy
    redirect_to root_path
  end

  private

  def set_topic
    @topic = Topic.find(params[:id])
  end

  def topic_params
    params.require(:topic).permit(:title, :overview)
  end
end
