module CampaignsHelper

  def user_has_character_in_campaign?
    @campaign.characters.any? do |character|
      current_user.characters.include?(character)
    end
  end

  def user_is_dm?
    @campaign.user == User.find(session[:user_id])
  end

end
