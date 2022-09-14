puts "🌱 Seeding spices..."

# Create Users
4.times do 
    User.create(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        password: Faker::Alphanumeric.alphanumeric(number: 7, min_alpha: 3, min_numeric: 3),
    )
end


# Create Recipes
44.times do
    Recipe.create(
        name: Faker::Name.name,
        requirements: Faker::Requirement.requirements,
        vegetarian: Faker::Vegetarian.vegetarian,
end



puts "✅ Done seeding!"
