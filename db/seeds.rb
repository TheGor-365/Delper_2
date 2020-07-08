# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@technology = Technology.create([{
  name: 'Ruby',
  purpose: 'Web development',
  describe: 'Script programming language',
  technology_documentation_link: 'https://docs.ruby-lang.org/en/',
  technology_rating: 7
}])
