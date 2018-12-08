puts "Starting seeding"
Veteran.destroy_all
Post.destroy_all
Comment.destroy_all
Tag.destroy_all
TagPost.destroy_all

v1 = Veteran.create({username: 'Veteran1', location: 'Location1', password: 'hi'})
v2 = Veteran.create({username: 'Veteran2', location: 'Location2', password: 'bye'})
v3 = Veteran.create({username: 'Veteran3', location: 'Location3', password: 'hi'})
v4 = Veteran.create({username: 'Veteran4', location: 'Location4', password: 'hi'})
v5 = Veteran.create({username: 'Veteran5', location: 'Location5', password: 'hi'})

li1 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
li2 = "Aliquam condimentum a nulla in accumsan."
li3 = "Maecenas placerat erat sit amet hendrerit tincidunt."
li4 = "Praesent eget eleifend augue. Duis interdum orci in est mattis euismod. Praesent ut ex vestibulum, tempor metus sit amet, iaculis est."
li5 = "Sed dapibus, tellus a elementum ultrices, enim tortor mollis diam, at consequat nisl urna eget arcu."
li6 = "Pellentesque accumsan metus id lobortis molestie. Donec massa nisl, fermentum quis quam eu, posuere accumsan turpis. Etiam quam lorem, mollis vitae urna vitae, fermentum consectetur orci. "

p1 = Post.create({title: 'Post1 Title', content: "The clock within this blog and the clock on my laptop are 1 hour different from each other.", veteran_id: v1.id })
p2 = Post.create({title: 'Post2 Title', content: "If the Easter Bunny and the Tooth Fairy had babies would they take your teeth and leave chocolate for you?", veteran_id: v1.id })
p3 = Post.create({title: 'Post3 Title', content: "A glittering gem is not enough.", veteran_id: v1.id })
p4 = Post.create({title: 'Post4 Title', content: "The sky is clear; the stars are twinkling.", veteran_id: v2.id })
p5 = Post.create({title: 'Post5 Title', content: "My Mum tries to be cool by saying that she likes all the same things that I do.", veteran_id: v2.id })
p6 = Post.create({title: 'Post6 Title', content: "He ran out of money, so he had to stop playing poker.", veteran_id: v2.id })
p7 = Post.create({title: 'Post7 Title', content: "The quick brown fox jumps over the lazy dog.", veteran_id: v2.id })
p8 = Post.create({title: 'Post8 Title', content: "He turned in the research paper on Friday; otherwise, he would have not passed the class.", veteran_id: v2.id })
p9 = Post.create({title: 'Post9 Title', content: "There was no ice cream in the freezer, nor did they have money to go to the store.", veteran_id: v2.id })
p10 = Post.create({title: 'Post10 Title', content: "I love eating toasted cheese and tuna sandwiches.", veteran_id: v3.id })
p11 = Post.create({title: 'Post11 Title', content: "She borrowed the book from him many years ago and hasn't yet returned it.", veteran_id: v3.id })
p12 = Post.create({title: 'Post12 Title', content: "Last Friday in three week’s time I saw a spotted striped blue worm shake hands with a legless lizard.", veteran_id: v3.id })
p13 = Post.create({title: 'Post13 Title', content: "She was too short to see over the fence.", veteran_id: v3.id })
p14 = Post.create({title: 'Post14 Title', content: "Someone I know recently combined Maple Syrup & buttered Popcorn thinking it would taste like caramel popcorn. It didn’t and they don’t recommend anyone else do it either.", veteran_id: v3.id })
p15 = Post.create({title: 'Post15 Title', content: "Wednesday is hump day, but has anyone asked the camel if he’s happy about it?", veteran_id: v3.id })
p16 = Post.create({title: 'Post16 Title', content: "I am counting my calories, yet I really want dessert.", veteran_id: v3.id })
p17 = Post.create({title: 'Post17 Title', content: "The clock within this blog and the clock on my laptop are 1 hour different from each other.", veteran_id: v3.id })
p18 = Post.create({title: 'Post18 Title', content: "Should we start class now, or should we wait for everyone to get here?", veteran_id: v4.id })
p19 = Post.create({title: 'Post19 Title', content: "The clock within this blog and the clock on my laptop are 1 hour different from each other.", veteran_id: v4.id })
p20 = Post.create({title: 'Post20 Title', content: "I checked to make sure that he was still alive.", veteran_id: v4.id })
p21 = Post.create({title: 'Post21 Title', content: "He told us a very exciting adventure story.", veteran_id: v4.id })
p22 = Post.create({title: 'Post22 Title', content: "A purple pig and a green donkey flew a kite in the middle of the night and ended up sunburnt.", veteran_id: v4.id })
p23 = Post.create({title: 'Post23 Title', content: "He didn’t want to go to the dentist, yet he went anyway.", veteran_id: v4.id })
p24 = Post.create({title: 'Post24 Title', content: "Cats are good pets, for they are clean and are not noisy.", veteran_id: v5.id })
p25 = Post.create({title: 'Post25 Title', content: "Check back tomorrow; I will see if the book has arrived.", veteran_id: v5.id })
p26 = Post.create({title: 'Post26 Title', content: "My Mum tries to be cool by saying that she likes all the same things that I do.", veteran_id: v5.id })
p27 = Post.create({title: 'Post27 Title', content: "They got there early, and they got really good seats.", veteran_id: v5.id })

comment_text = "Comment comment comment comment text comment comment comment text comment comment comment text comment comment comment text comment comment comment text comment comment comment text"

c1 = Comment.create({comment: "#{li1}", post_id: p1.id })
c2 = Comment.create({comment: "#{li2}", post_id: p2.id })
c3 = Comment.create({comment: "#{li3}", post_id: p3.id })
c4 = Comment.create({comment: "#{li4}", post_id: p4.id })
c5 = Comment.create({comment: "#{li5}", post_id: p10.id })
c6 = Comment.create({comment: "#{li6}", post_id: p11.id })
c7 = Comment.create({comment: "#{li1}", post_id: p12.id })
c8 = Comment.create({comment: "#{li2}", post_id: p13.id })
c9 = Comment.create({comment: "#{li3}", post_id: p21.id })
c10 = Comment.create({comment: "#{li4}", post_id: p23.id })

puts "Done seeding"
