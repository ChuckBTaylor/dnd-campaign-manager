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
end
