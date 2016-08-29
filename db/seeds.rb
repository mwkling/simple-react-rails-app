# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

prefixes = ["Senior", "Junior", "Executive"]
titles = ["Developer", "Designer", "Sales", "Support"]
suffixes = ["", "Manager", "Internship"]

companies = ["Google", "Facebook", "Uber", "Airbnb", "Snapchat"]

cities = ["San Francisco", "Ann Arbor", "New York"]


for i in (1..100)
  job_title = prefixes.sample + " " + titles.sample + " " + suffixes.sample
  company = companies.sample
  city = cities.sample

  Job.create(job_title: job_title, company_name: company, city: city)
end
