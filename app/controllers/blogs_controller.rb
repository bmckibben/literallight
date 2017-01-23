class BlogsController < ApplicationController
   before_action :authenticate_user!
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  # GET /blogs
  # GET /blogs.json
  def index
    @blogs = Journal.where.not(title: nil)order_by(entry_for: :desc).limit(14) 
    render :layout => 'gradient' 
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
    render :layout => 'gradient' 
  end

  # GET /blogs/new
  def new
    @blog = Journal.new
    @blog.entry_for = DateTime.now.in_time_zone('Indiana (East)').to_formatted_s(:stardate)
    render :layout => 'gradient' 
  end

  # GET /blogs/1/edit
  def edit
    render :layout => 'gradient' 
  end

  # POST /blogs
  # POST /blogs.json
  def create
    @blog = Journal.new(blog_params)
    @blog.created_at = DateTime.now
    @blog.updated_at = DateTime.now
    if @blog.entry_for.nil?
      @blog.entry_for = DateTime.now.in_time_zone('Indiana (East)').to_formatted_s(:stardate)
    end  
    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update
    @journal.updated_at = DateTime.now
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Journal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_params
      params.require(:blog).permit(:id, :entry_for, :am_glucose, :pm_glucose, :weight, :systolic, :diastolic, :body_fat, :energy, :motivation, :happiness, :details, :goals, :notes, :created_at, :updated_at, :meditation, :yoga, :curls, :kettlebells, :pushups, :situps, :eliptical_time, :eliptical_dist, :title)
    end
end
