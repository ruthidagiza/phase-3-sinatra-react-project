puts "🌱 Seeding spices..."

# Seed your database here
articles = [
  {title: 'Why Facts Don’t Change Our Minds', content: 'he economist J.K. Galbraith once wrote, “Faced with a choice between changing one’s mind and proving there is no need to do so, almost everyone gets busy with the proof.”
    ', writer: 'J.K. Galbraith', createdOn:"1663107511921",likes:2,},
]
articles.each do |u|
    Article.create(u)

puts "✅ Done seeding!"
