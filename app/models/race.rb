class Race < ApplicationRecord
  has_many :characters

  def self.add_manually_entered_races
    dragonborn = Race.new(
      name: "Dragonborn",
      api_url: nil,
      speed: 30,
      ability_bonuses: "200001",
      age: "Young Dragonborn grow quickly. They walk hours after hatching, attain the size and developement of a 10-year-old human child at the age of 3, and reach adulthood by 15. They live to be around 80.",
      alignment: "Dragonborn tend to extremes, making a conscious choice for one side of the other in the cosmic war between good and evil (represented by Bahamit and Tiamat, respectively). Most Dragonborn are good, but those who side with Tiamat can be terrible villains.",
      size: "Dradonborn are taller and heavier than humans, standing well over 6 feet tall and averaging 250 pounds. Your size is Medium.",
      languages: "You can speak, read, and write Common and Draconic. Draconic is thought to be one of the oldest languages and is often used in the study of magic. The language sounds harsh to most other creatures and includes numerous hard consonants and sibilants."
    )
    dragonborn.save
    gnome = Race.new(
      name: "Gnome",
      api_url: nil,
      speed: 25,
      ability_bonuses: "000200",
      age: "Gnomes mature at the same rate humans do, and most are expected to settle down into an adult life by around age 40. They can live 350 to almost 500 years.",
      alignment: "Gnomes are most often good. Those who tend toward law are sages, engineers, researchers, scholars, investigators, or inventors. Those who tend toward chaos are minstrels, tricksters, wanderers, or fanciful jewelers. Gnomes are good-hearted, and even the tricksters among them are more playful than vicious.",
      size: "Gnomes are between 3 and 4 feet tall and average about 40 pounds. Your size is Small.",
      languages: "You can speak, read, and write Common and Gnomish. The Gnomish language, which uses the Dwarvish script, is renowned for its technical treatises and its catalogs of knowledge about the natural world."
    )
    gnome.save
    half_elf = Race.new(
      name: "Half-Elf",
      api_url: nil,
      speed: 30,
      ability_bonuses: "000002",
      age: "Half-elves mature at the same rate humans do and reach adulthood around the age of 20. They live much longer than humans, however, often exceeding 180 years.",
      alignment: "Half-elves share the chaotic bent of their elven heritage. They value both personal freedom and creative expression, demonstrating neither love of leaders nor desire for followers. They chafe at rules, resent others’ demands, and sometimes prove unreliable, or at least unpredictable.",
      size: "Half-elves are about the same size as humans, ranging from 5 to 6 feet tall. Your size is Medium.",
      languages: "You can speak, read, and write Common, Elvish, and one extra language of your choice."
    )
    half_elf.save
    half_orc = Race.new(
      name: "Half-Orc",
      api_url: nil,
      speed: 30,
      ability_bonuses: "201000",
      age: "Half-orcs mature a little faster than humans, reaching adulthood around age 14. They age noticeably faster and rarely live longer than 75 years.",
      alignment: "Half-orcs inherit a tendency toward chaos from their orc parents and are not strongly inclined toward good. Half-orcs raised among orcs and willing to live out their lives among them are usually evil.",
      size: "Half-orcs are somewhat larger and bulkier than humans, and they range from 5 to well over 6 feet tall. Your size is Medium.",
      languages: "You can speak, read, and write Common and Orc. Orc is a harsh, grating language with hard consonants. It has no script of its own but is written in the Dwarvish script."
    )
    half_orc.save
    hill_dwarf = Race.new(
      name: "Hill Dwarf",
      api_url: nil,
      speed: 25,
      ability_bonuses: "002010",
      age: "Dwarves mature at the same rate as humans, but they’re considered young until they reach the age of 50. On average, they live about 350 years.",
      alignment: "Most dwarves are lawful, believing firmly in the benefits of a well-ordered society. They tend toward good as well, with a strong sense of fair play and a belief that everyone deserves to share in the benefits of a just order.",
      size: "Dwarves stand between 4 and 5 feet tall and average about 150 pounds. Your size is Medium.",
      languages: "You can speak, read, and write Common and Dwarvish. Dwarvish is full of hard consonants and guttural sounds, and those characteristics spill over into whatever other language a dwarf might speak."
    )
    hill_dwarf.save
    mountain_dwarf = Race.new(
      name: "Mountain Dwarf",
      api_url: nil,
      speed: 25,
      ability_bonuses: "202000",
      age: "Dwarves mature at the same rate as humans, but they’re considered young until they reach the age of 50. On average, they live about 350 years.",
      alignment: "Most dwarves are lawful, believing firmly in the benefits of a well-ordered society. They tend toward good as well, with a strong sense of fair play and a belief that everyone deserves to share in the benefits of a just order.",
      size: "Dwarves stand between 4 and 5 feet tall and average about 150 pounds. Your size is Medium.",
      languages: "You can speak, read, and write Common and Dwarvish. Dwarvish is full of hard consonants and guttural sounds, and those characteristics spill over into whatever other language a dwarf might speak."
    )
    mountain_dwarf.save
    high_elf = Race.new(
      name: "High Elf",
      api_url: nil,
      speed: 30,
      ability_bonuses: "020100",
      age: "Although elves reach physical maturity at about the same age as humans, the elven understanding of adulthood goes beyond physical growth to encompass worldly experience. An elf typically claims adulthood and an adult name around the age of 100 and can live to be 750 years old.",
      alignment: "Elves love freedom, variety, and self- expression, so they lean strongly toward the gentler aspects of chaos. They value and protect others' freedom as well as their own, and they are more often good than not. The drow are an exception; their exile into the Underdark has made them vicious and dangerous. Drow are more often evil than not.",
      size: "Elves range from under 5 to over 6 feet tall and have slender builds. Your size is Medium.",
      languages: "You can speak, read, and write Common and Elvish. Elvish is fluid, with subtle intonations and intricate grammar. Elven literature is rich and varied, and their songs and poems are famous among other races. Many bards learn their language so they can add Elvish ballads to their repertoires.\nAs a High Else, you can speak, read, and write one extra language of your choice."
    )
    high_elf.save
    wood_elf = Race.new(
      name: "Wood Elf",
      api_url: nil,
      speed: 35,
      ability_bonuses: "020010",
      age: "Although elves reach physical maturity at about the same age as humans, the elven understanding of adulthood goes beyond physical growth to encompass worldly experience. An elf typically claims adulthood and an adult name around the age of 100 and can live to be 750 years old.",
      alignment: "Elves love freedom, variety, and self- expression, so they lean strongly toward the gentler aspects of chaos. They value and protect others' freedom as well as their own, and they are more often good than not. The drow are an exception; their exile into the Underdark has made them vicious and dangerous. Drow are more often evil than not.",
      size: "Elves range from under 5 to over 6 feet tall and have slender builds. Your size is Medium.",
      languages: "You can speak, read, and write Common and Elvish. Elvish is fluid, with subtle intonations and intricate grammar. Elven literature is rich and varied, and their songs and poems are famous among other races. Many bards learn their language so they can add Elvish ballads to their repertoires."
    )
    wood_elf.save
    lightfoot_halfling = Race.new(
      name: "Lightfoot Halfling",
      api_url: nil,
      speed: 25,
      ability_bonuses: "020001",
      age: "A halfling reaches adulthood at the age of 20 and generally lives into the middle of his or her second century.",
      alignment: "Most halflings are lawful good. As a rule, they are good-hearted and kind, hate to see others in pain, and have no tolerance for oppression. They are also very orderly and traditional, leaning heavily on the support of their community and the comfort of their old ways.",
      size: "Halflings average about 3 feet tall and weigh about 40 pounds. Your size is Small.",
      languages: "You can speak, read, and write Common and Halfling. The Halfling language isn’t secret, but halflings are loath to share it with others. They write very little, so they don’t have a rich body of literature. Their oral tradition, however, is very strong. Almost all halflings speak Common to converse with the people in whose lands they dwell or through which they are traveling."
    )
    lightfoot_halfling.save
    stout_halfling = Race.new(
      name: "Stout Halfling",
      api_url: nil,
      speed: 25,
      ability_bonuses: "021000",
      age: "A halfling reaches adulthood at the age of 20 and generally lives into the middle of his or her second century.",
      alignment: "Most halflings are lawful good. As a rule, they are good-hearted and kind, hate to see others in pain, and have no tolerance for oppression. They are also very orderly and traditional, leaning heavily on the support of their community and the comfort of their old ways.",
      size: "Halflings average about 3 feet tall and weigh about 40 pounds. Your size is Small.",
      languages: "You can speak, read, and write Common and Halfling. The Halfling language isn’t secret, but halflings are loath to share it with others. They write very little, so they don’t have a rich body of literature. Their oral tradition, however, is very strong. Almost all halflings speak Common to converse with the people in whose lands they dwell or through which they are traveling."
    )
    stout_halfling.save
    human = Race.new(
      name: "Human",
      api_url: nil,
      speed: 30,
      ability_bonuses: "111111",
      age: "Humans reach adulthood in their late teens and live less than a century.",
      alignment: "Humans tend toward no particular alignment. The best and the worst are found among them.",
      size: "Humans vary widely in height and build, from barely 5 feet to well over 6 feet tall. Regardless of your position in that range, your size is Medium.",
      languages: "You can speak, read, and write Common and one extra language of your choice. Humans typically learn the languages of other peoples they deal with, including obscure dialects. They are fond of sprinkling their speech with words borrowed from other tongues: Orc curses, Elvish musical expressions, Dwarvish military phrases, and so on."
    )
    human.save
  end
end
