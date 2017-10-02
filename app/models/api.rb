class Api


  def get_skills_from_api(skill)
  	json = RestClient.get("http://dnd5eapi.co/api/#{skill}/")
  	collection = JSON.parse(json)
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


end
