class ProjectsVendorsController < ApplicationController
  before_action :set_projects_vendor, only: [:show, :edit, :update, :destroy]

  # GET /projects_vendors
  # GET /projects_vendors.json
  def index
   @projects_vendors = ProjectsVendor.all
  end

  def bid
    project = Project.find(params[:projects_vendor][:project_id])
    
    vendor = Vendor.find(params[:projects_vendor][:vendor_id])

    project.vendors << vendor

    render plain: params.inspect
  end
  

  # GET /projects_vendors/1
  # GET /projects_vendors/1.json
  def show
    @projects = Project.all
  end

  # GET /projects_vendors/new
  def new
    @projects_vendor = ProjectsVendor.new
    @project = Project.all
    @vendor = Vendor.all
  end

  # GET /projects_vendors/1/edit
  def edit
  end

  # POST /projects_vendors
  # POST /projects_vendors.json
  def create
    @projects_vendor = ProjectsVendor.new(projects_vendors_params)

    respond_to do |format|
      if @projects_vendor.save
        format.html { redirect_to @projects_vendor, notice: 'Projects vendor was successfully created.' }
        format.json { render :show, status: :created, location: @projects_vendor }
      else
        format.html { render :new }
        format.json { render json: @projects_vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects_vendors/1
  # PATCH/PUT /projects_vendors/1.json
  def update
    respond_to do |format|
      if @projects_vendor.update(projects_vendor_params)
        format.html { redirect_to @projects_vendor, notice: 'Projects vendor was successfully updated.' }
        format.json { render :show, status: :ok, location: @projects_vendor }
      else
        format.html { render :edit }
        format.json { render json: @projects_vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects_vendors/1
  # DELETE /projects_vendors/1.json
  def destroy
    @projects_vendor.destroy
    respond_to do |format|
      format.html { redirect_to projects_vendors_url, notice: 'Projects vendor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projects_vendor
      @projects_vendors = ProjectsVendor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projects_vendor_params
      params.require(:projects_vendor).permit(:bidPrice, :file, :project_ids => [], :vendor_ids => [])
      
    end
end
