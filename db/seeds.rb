# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
v1 = Veteran.create({username: 'Veteran1', location: 'Location1'})
v2 = Veteran.create({username: 'Veteran2', location: 'Location2'})
v3 = Veteran.create({username: 'Veteran3', location: 'Location3'})
v4 = Veteran.create({username: 'Veteran4', location: 'Location4'})
v5 = Veteran.create({username: 'Veteran5', location: 'Location5'})

lorem_ipsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam condimentum a nulla in accumsan. Maecenas placerat erat sit amet hendrerit tincidunt. Praesent eget eleifend augue. Duis interdum orci in est mattis euismod. Praesent ut ex vestibulum, tempor metus sit amet, iaculis est. Sed dapibus, tellus a elementum ultrices, enim tortor mollis diam, at consequat nisl urna eget arcu. Pellentesque accumsan metus id lobortis molestie. Donec massa nisl, fermentum quis quam eu, posuere accumsan turpis. Etiam quam lorem, mollis vitae urna vitae, fermentum consectetur orci. "

p1 = Post.create({title: 'Post1 Title', content: "Happy today", veteran_id: v1.id })
p2 = Post.create({title: 'Post2 Title', content: "Happy later", veteran_id: v1.id })
p3 = Post.create({title: 'Post3 Title', content: "Happy now", veteran_id: v1.id })
p4 = Post.create({title: 'Post4 Title', content: "Good weather", veteran_id: v2.id })
p5 = Post.create({title: 'Post5 Title', content: "Fun day today outside", veteran_id: v2.id })
p6 = Post.create({title: 'Post6 Title', content: "happy there", veteran_id: v2.id })
p7 = Post.create({title: 'Post7 Title', content: "#{lorem_ipsum}", veteran_id: v2.id })
p8 = Post.create({title: 'Post8 Title', content: "#{lorem_ipsum}", veteran_id: v2.id })
p9 = Post.create({title: 'Post9 Title', content: "#{lorem_ipsum}", veteran_id: v2.id })
p10 = Post.create({title: 'Post10 Title', content: "#{lorem_ipsum}", veteran_id: v3.id })
p11 = Post.create({title: 'Post11 Title', content: "#{lorem_ipsum}", veteran_id: v3.id })
p12 = Post.create({title: 'Post12 Title', content: "#{lorem_ipsum}", veteran_id: v3.id })
p13 = Post.create({title: 'Post13 Title', content: "#{lorem_ipsum}", veteran_id: v3.id })
p14 = Post.create({title: 'Post14 Title', content: "#{lorem_ipsum}", veteran_id: v3.id })
p15 = Post.create({title: 'Post15 Title', content: "#{lorem_ipsum}", veteran_id: v3.id })
p16 = Post.create({title: 'Post16 Title', content: "#{lorem_ipsum}", veteran_id: v3.id })
p17 = Post.create({title: 'Post17 Title', content: "#{lorem_ipsum}", veteran_id: v3.id })
p18 = Post.create({title: 'Post18 Title', content: "#{lorem_ipsum}", veteran_id: v4.id })
p19 = Post.create({title: 'Post19 Title', content: "#{lorem_ipsum}", veteran_id: v4.id })
p20 = Post.create({title: 'Post20 Title', content: "#{lorem_ipsum}", veteran_id: v4.id })
p21 = Post.create({title: 'Post21 Title', content: "#{lorem_ipsum}", veteran_id: v4.id })
p22 = Post.create({title: 'Post22 Title', content: "#{lorem_ipsum}", veteran_id: v4.id })
p23 = Post.create({title: 'Post23 Title', content: "#{lorem_ipsum}", veteran_id: v4.id })
p24 = Post.create({title: 'Post24 Title', content: "#{lorem_ipsum}", veteran_id: v5.id })
p25 = Post.create({title: 'Post25 Title', content: "#{lorem_ipsum}", veteran_id: v5.id })
p26 = Post.create({title: 'Post26 Title', content: "#{lorem_ipsum}", veteran_id: v5.id })
p27 = Post.create({title: 'Post27 Title', content: "#{lorem_ipsum}", veteran_id: v5.id })

comment_text = "Comment comment comment comment text comment comment comment text comment comment comment text comment comment comment text comment comment comment text comment comment comment text"

c1 = Comment.create({comment: "#{comment_text}", post_id: p1.id })
c2 = Comment.create({comment: "#{comment_text}", post_id: p2.id })
c3 = Comment.create({comment: "#{comment_text}", post_id: p3.id })
c4 = Comment.create({comment: "#{comment_text}", post_id: p4.id })
c5 = Comment.create({comment: "#{comment_text}", post_id: p10.id })
c6 = Comment.create({comment: "#{comment_text}", post_id: p11.id })
c7 = Comment.create({comment: "#{comment_text}", post_id: p12.id })
c8 = Comment.create({comment: "#{comment_text}", post_id: p13.id })
c9 = Comment.create({comment: "#{comment_text}", post_id: p21.id })
c10 = Comment.create({comment: "#{comment_text}", post_id: p23.id })
