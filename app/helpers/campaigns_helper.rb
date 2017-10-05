module CampaignsHelper

  def user_has_character_in_campaign?
    @campaign.characters.any? do |character|
      current_user.characters.include?(character)
    end
  end

  def user_is_dm?
    @campaign.user == User.find(session[:user_id])
  end

  def users_campaignless_characters
    current_user.characters.select do |character|
      character.campaigns.empty?
    end
  end

end
