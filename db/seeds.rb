  # This file should ensure the existence of records required to run the application in every environment (production,
  # development, test). The code here should be idempotent so that it can be executed at any point in every environment.
  # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
  #
  # Example:
  #
  #   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
  #     MovieGenre.find_or_create_by!(name: genre_name)
  #   end
  {  "adventure" => "Immense adventures await in this section.",
  "drama" => "Betrayal and passion will be found behind this door.",
  "romance" => "Love and desire await if you follow your heart.",
  "horror" => "What a terrible night for a curse.",
  "sci-fi" => "Intergalactic creatures and futuristic adventures await.",
  "fiction" => "Dungeons with dragons and food await."
}.each do |genre_name, description|
  Category.find_or_create_by!(name: genre_name, description: description)
end
