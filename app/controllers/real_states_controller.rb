class RealStatesController < ApplicationController
  before_action :set_real_state, only: [:show, :update, :destroy]

  # GET /real_states
  def index
    @real_states = RealState.select(:id, :name, :real_state_type, :city, :country).all
    @real_states = @real_states.map { |rs| { id: rs.id, name: rs.name, real_state_type: rs.real_state_type, city: rs.city, country: rs.country } }
    render json: @real_states
  end

  # GET /real_states/1
  def show
    render json: @real_state
  end

  # POST /real_states
  def create
    @real_state = RealState.new(real_state_params)

    if @real_state.save
      render json: @real_state, status: :created, location: @real_state
    else
      render json: @real_state.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /real_states/1
  def update
    if @real_state.update(real_state_params)
      render json: @real_state
    else
      render json: @real_state.errors, status: :unprocessable_entity
    end
  end

  # DELETE /real_states/1
  def destroy
    @real_state.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_real_state
      @real_state = RealState.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def real_state_params
      params.require(:real_state).permit(:name, :real_state_type, :street, :external_number, :internal_number, :neighborhood, :city, :country, :rooms, :bathrooms, :comments)
    end
end
