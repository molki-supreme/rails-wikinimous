require "faker"
# TODO: Write a seed to insert 100 posts in the database

10.times do
  article = Article.new(
    title: Faker::Book.title,
    content: Faker::Quote.famous_last_words
  )
  article.save
end
