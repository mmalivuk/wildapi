class ApIkeysController < ApplicationController
  before_action :set_ap_ikey, only: [:show, :edit, :update, :destroy]

  # GET /ap_ikeys
  # GET /ap_ikeys.json
  def index
    @ap_ikeys = ApIkey.all
  end

  # GET /ap_ikeys/1
  # GET /ap_ikeys/1.json
  def show
  end

  # GET /ap_ikeys/new
  def new
    @ap_ikey = ApIkey.new
  end

  # GET /ap_ikeys/1/edit
  def edit
  end

  # POST /ap_ikeys
  # POST /ap_ikeys.json
  def create
    @ap_ikey = ApIkey.new(ap_ikey_params)

    respond_to do |format|
      if @ap_ikey.save
        format.html { redirect_to @ap_ikey, notice: 'Ap ikey was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ap_ikey }
      else
        format.html { render action: 'new' }
        format.json { render json: @ap_ikey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ap_ikeys/1
  # PATCH/PUT /ap_ikeys/1.json
  def update
    respond_to do |format|
      if @ap_ikey.update(ap_ikey_params)
        format.html { redirect_to @ap_ikey, notice: 'Ap ikey was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ap_ikey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ap_ikeys/1
  # DELETE /ap_ikeys/1.json
  def destroy
    @ap_ikey.destroy
    respond_to do |format|
      format.html { redirect_to ap_ikeys_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ap_ikey
      @ap_ikey = ApIkey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ap_ikey_params
      params.require(:ap_ikey).permit(:key, :user_id)
    end
end
