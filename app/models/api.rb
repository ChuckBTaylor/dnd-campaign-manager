class Api


  def get_skills_from_api(skill)
  	json = RestClient.get("http://dnd5eapi.co/api/#{skill}/")
  	JSON.parse(json)
  end



  def parse_data(data)
    data["results"].map do |result|
      {
        name: result["name"],
        api_url: result["url"]
      }
    end
  end

  def populate_table(skill)
    data = self.get_skills_from_api(skill.pluralize)
    skill = skill.capitalize.constantize
    self.parse_data(data).each do |property|
      skill.create(property)
    end
  end

  def populate_class_name
    data = self.get_skills_from_api("classes")
    self.parse_data(data).each do |property|
      ClassName.create(property)
    end
  end

  def populate_race_info
    Race.all.map do |race|
      JSON.parse(RestClient.get(race.api_url))
    end.each do |race_info|
      race = Race.find_by(name: race_info["name"])
      race.update(speed: race_info["speed"])
      race.update(alignment: race_info["alignment"])
      race.update(age: race_info["age"])
      race.update(size: race_info["size_description"])
      race.update(languages: race_info["language_desc"])
      race.update(ability_bonuses: race_info["ability_bonuses"].join)
    end
  end

  def populate_skill_info
    Skill.all.each do |skill|
      skill_info = JSON.parse(RestClient.get(skill.api_url))
      skill.update(desc: skill_info["desc"][0])
      skill.update(ability_score: skill_info["ability_score"]["name"])
    end
  end

  def populate_class_names_spells
    Spell.all.each do |spell|
      spell_info = JSON.parse(RestClient.get(spell.api_url))
      spell_info["classes"].each do |class_hash|
        clas = ClassName.find_by(name: class_hash["name"])
        clas.spells << spell
      end
    end
  end


end
