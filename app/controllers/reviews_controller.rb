class ReviewsController < ApplicationController

  def index
    @reviews = Review.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def new
  end

  def edit
  end

  def create
    @paper = Paper.find(params[:paper_id])
    @review = Review.new(params[:review]) do |r|
      r.paper = @paper
    end

    respond_to do |format|
      if @review.save
        format.html { redirect_to @paper, notice: 'Review was successfully created.'}
      else
        format.html { render action: "new" }
      end
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    respond_to do |format|
      format.html { redirect_to paper_path(params[:paper_id])}
    end
  end
end