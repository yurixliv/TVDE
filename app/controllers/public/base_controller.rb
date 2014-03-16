# encoding: utf-8
class Public::BaseController < ApplicationController
  layout 'public'

  def index
  end

  def selected
    # found = begin
    #           School.find_by_token(params[:code])
    #         rescue
    #           false
    #         end

    # if !!(found) && found.confirmed_at.present?
    #   flash[:error] = 'Sua escola já foi confirmada. Convide uma escola.'
    #   redirect_to public_base_partner_path
    # end

    # if !!(found)
    #   @school = found
    #   session[:current_selected_school] = found
    # else
    #   flash[:error] = 'Sua escola não foi encontrada com base nesse código.'
    #   redirect_to public_base_sign_up_path
    # end
  end

  def confirmed
    # session[:current_selected_school].update_attributes(whitelist)
  end

  def sign_up
    # @school = School.new(name: 'teste')
  end

  def sign_up_confirmed
    # redirect_to public_base_sign_up_path unless School.new(whitelist).save
  end

  def partner
  end

  def partner_confirmed
  #   @school_name = whitelist[:name]
  #   redirect_to public_base_partner_path unless School.new(whitelist).save
  end

  def check_namespace
    @bool = School.check_namespace params[:namespace]
    respond_to do |format|
      format.json { render :json => @bool, status: 200 }
    end
  end

  private

  def whitelist
    params.require(:school).permit([:name,:category,:state,:city,:cep,:tel,:number_students,:headmaster_name,:headmaster_email,:technical_manager_name,:technical_manager_email,:coordinator_name,:coordinator_email,:contact_name,:contact_email,:stage,:contact_tel,:charge,:token,:confirmed_at])
  end

end