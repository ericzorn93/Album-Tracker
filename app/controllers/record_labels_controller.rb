class RecordLabelsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_record_label, only: [:show, :edit, :update, :destroy]

  # GET /record_labels
  # GET /record_labels.json
  def index
    @record_labels = RecordLabel.all
  end

  # GET /record_labels/1
  # GET /record_labels/1.json
  def show
  end

  # GET /record_labels/new
  def new
    @record_label = RecordLabel.new
  end

  # GET /record_labels/1/edit
  def edit
  end

  # POST /record_labels
  # POST /record_labels.json
  def create
    @record_label = RecordLabel.new(record_label_params)

    respond_to do |format|
      if @record_label.save
        format.html { redirect_to @record_label, notice: 'Record label was successfully created.' }
        format.json { render :show, status: :created, location: @record_label }
      else
        format.html { render :new }
        format.json { render json: @record_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /record_labels/1
  # PATCH/PUT /record_labels/1.json
  def update
    respond_to do |format|
      if @record_label.update(record_label_params)
        format.html { redirect_to @record_label, notice: 'Record label was successfully updated.' }
        format.json { render :show, status: :ok, location: @record_label }
      else
        format.html { render :edit }
        format.json { render json: @record_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /record_labels/1
  # DELETE /record_labels/1.json
  def destroy
    @record_label.destroy
    respond_to do |format|
      format.html { redirect_to record_labels_url, notice: 'Record label was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record_label
      @record_label = RecordLabel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def record_label_params
      params.require(:record_label).permit(:name)
    end
end
