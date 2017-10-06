module CharactersHelper

  def class_okay?(spell)
    okay_classes = get_spell_classes(spell)
    okay_classes.include?(@character.class_name) ? true : false
  end

  def get_spell_classes(spell)
    json = RestClient.get(spell.api_url)
    collection = JSON.parse(json)
    collection["classes"].map do |class_names|
      class_names["name"]
    end
  end

  def ability_score_to_full_word(ability_short)

    case (ability_short.upcase)
    when "STR"
      "strength"
    when "DEX"
      "dexterity"
    when "CON"
      "constitution"
    when "INT"
      "intelligence"
    when "WIS"
      "wisdom"
    when "CHA"
      "charisma"
    end

  end

  def ability_score_to_index(ability_short)

    case (ability_short.upcase)
    when "STR","STRENGTH" then 0
    when "DEX","DEXTERITY" then 1
    when "CON","CONSTITUTION" then 2
    when "INT","INTELLIGENCE" then 3
    when "WIS","WISDOM" then 4
    when "CHA","CHARISMA" then 5
    end

  end

  def character_is_proficient?(skill)
    @character.skills.include?(skill)
  end

  def raw_to_modifier(raw)
    (raw/2)-5
  end

  def proficiency_bonus
    case @character.level
    when 1..4 then 2
    when 5..8 then 3
    when 9..12 then 4
    when 13..16 then 5
    when 17..20 then 6
    end
  end

end
