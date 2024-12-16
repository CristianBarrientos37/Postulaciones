class ApplyController < ApplicationController
  def create
    @offer_id = params[:offer_id]
    @user_id = current_user.id

    @apply = Apply.new(offer_id: @offer_id,user_id: @user_id)

    respond_to do |format|
      if @apply.save
        format.html { redirect_to offer_path(@offer_id), notice: "Offer was successfully created." }
        format.json { render :show, status: :created, location: @apply }
      else
        format.html { render offer_path(@offer_id), status: :unprocessable_entity }
        format.json { render json: @apply.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  def check
    apply = Apply.find_by(id: params[:apply_id])
    puts "\n\n#{apply.to_json}\n\n"
    apply.checked = true
    apply.save
    redirect_back fallback_location: root_path
  end
end
