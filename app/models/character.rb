class Character < ApplicationRecord
  belongs_to :player, class_name: "User"
  has_and_belongs_to_many :campaigns
  belongs_to :race
  belongs_to :class_name
  has_and_belongs_to_many :spells

  validates :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, numericality: {only_integer: true, greater_than_or_equal_to: 3, less_than_or_equal_to: 22}
  validates :level, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 20}


  def campaign
    self.campaigns.first
  end

  def campaign=(campaign)
    if campaign.is_a?(Campaign)
      self.campaigns.destroy_all
      self.campaigns << campaign
    end
  end

  def campaign_id
    self.campaigns.first.try(:id)
    # if self.campaigns.first => nil, then try(:id) => nil
    # else try(:id) => id number
  end

  def campaign_id=(campaign_id)
    new_campaign = Campaign.find(campaign_id)
    if new_campaign
      self.campaign = new_campaign
    else
      self.error.push("No Campaign by that name")
    end
  end

  def stat_values_okay?(stat_array)
    stat_array.map do |roll_set|
      roll_set.reduce(:+)
    end.sort == get_user_stats_as_array.sort
  end

  def get_user_stats_as_array
    stat_array = []
    stat_array << self.strength
    stat_array << self.dexterity
    stat_array << self.constitution
    stat_array << self.intelligence
    stat_array << self.wisdom
    stat_array << self.charisma
    stat_array

  end



end
