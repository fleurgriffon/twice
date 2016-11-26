class NotionsController < ApplicationController
  before_action :set_notion, only: [:show, :edit, :update, :destroy]

  # GET /notions
  # GET /notions.json
  def index
    @notions = Notion.all
  end

  # GET /notions/1
  # GET /notions/1.json
  def show
  end

  # GET /notions/new
  def new
    @notion = Notion.new
  end

  # GET /notions/1/edit
  def edit
  end

  # POST /notions
  # POST /notions.json
  def create
    @notion = Notion.new(notion_params)

    respond_to do |format|
      if @notion.save
        format.html { redirect_to @notion, notice: 'Notion was successfully created.' }
        format.json { render :show, status: :created, location: @notion }
      else
        format.html { render :new }
        format.json { render json: @notion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notions/1
  # PATCH/PUT /notions/1.json
  def update
    respond_to do |format|
      if @notion.update(notion_params)
        format.html { redirect_to @notion, notice: 'Notion was successfully updated.' }
        format.json { render :show, status: :ok, location: @notion }
      else
        format.html { render :edit }
        format.json { render json: @notion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notions/1
  # DELETE /notions/1.json
  def destroy
    @notion.destroy
    respond_to do |format|
      format.html { redirect_to notions_url, notice: 'Notion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notion
      @notion = Notion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notion_params
      params.fetch(:notion, {})
    end
end
