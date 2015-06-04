# 10.times do
#   User.create(
#     username: Faker::Internet.user_name,
#     password: Faker::Internet.password(4),
#     name: Faker::Name.name,
#     email: Faker::Internet.email,
#     dob: Date.today - rand(15..40)*365
#     )
# end

# 100.times do
#   Post.create(
#     post_desc: Faker::Lorem.sentence,
#     user_id: User.pluck(:id).sample
#     )
# end

# 500.times do
#   Comment.create(
#     comment_desc: Faker::Lorem.sentence,
#     user_id: User.pluck(:id).sample,
#     post_id: Post.pluck(:id).sample
#     )
# end

500.times do
    PostsVote.create(
        user_id: User.pluck(:id).sample,
        post_id: Post.pluck(:id).sample,
        vote: [1, -1].sample
    )

    CommentsVote.create(
        user_id: User.pluck(:id).sample,
        comment_id: Comment.pluck(:id).sample,
        vote: [1, -1].sample
    )
end


# 500.times do
#   Like.create(
#     user_id: User.pluck(:id).sample,
#     status_id: Status.pluck(:id).sample
#     )
# end

# 5000.times do
#   Tag.create(
#     tag_desc: Faker::Lorem.word,
#     status_id: Status.pluck(:id).sample,
#     user_id: User.pluck(:id).sample
#     )
# end

