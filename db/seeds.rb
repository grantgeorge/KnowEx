# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Group shared across Users
ehouse = Group.create(name: 'E-House', location: 'everywhere')

# ======== Initializing User #1: Grant George ========

    grant_user = User.create(name: 'Grant George', email: 'grant@grantgeorge.io',
      uid: 'grant@grantgeorge.io', password: 'password', password_confirmation: 'password',
      nickname: 'grant')

    grant_profile = Profile.create(
      introduction: "Hey! Call me Curious George!",
      user: grant_user)

    grant_user.groups << ehouse

    # TODO: Address error caused by added profile
    # grant_user.profiles << grant_profile

    p1 = Post.create(title: 'Post 1',
                  body: 'Post 1',
                  user: grant_user)
    p2 = Post.create(title: 'Post 2',
                   body: 'Post 2',
                   user: grant_user)
    p3 = Post.create(title: 'Post 3',
                   body: 'Post 3',
                   user: grant_user)
    p4 = Post.create(title: 'Post 4',
                   body: 'Post 4',
                   user: grant_user)


# ======== Initializing User #2: Rob Reinold ========

    rob_user = User.create(name: 'Rob Reinold', email: 'rreinold@gmail.com',
      uid: 'rreinold@gmail.com', password: 'password', password_confirmation: 'password',
      nickname: 'rob')

    rob_profile = Profile.create(
      introduction: "Hey! I'm Rob the Builder!",
      user: rob_user)

    rob_user.groups << ehouse

    # TODO: Address error caused by added profile
    # rob_user.profiles << rob_profile

    p5 = Post.create(title: 'Post 5',
                  body: 'Post 5',
                  user: rob_user)
    p6 = Post.create(title: 'Post 6',
                   body: 'Post 6',
                   user: rob_user)
    p7 = Post.create(title: 'Post 7',
                   body: 'Post 7',
                   user: rob_user)
    p8 = Post.create(title: 'Post 8',
                   body: 'Post 8',
                   user: rob_user)

# ======== Add Endorsements ========

    e1 = Endorsement.create(
      text:"DevSkills",
      user_id: 2,
      endorseable_id: 1,
      endorseable_type: "Post"
      )

    e2 = Endorsement.create(
      text:"$WAG",
      user_id: 2,
      endorseable_id: 2,
      endorseable_type: "Post"
      )
    e3 = Endorsement.create(
      text:"Design",
      user_id: 2,
      endorseable_id: 1,
      endorseable_type: "Post"
      )


    t1 = Tag.create(name:"DevSkills")

    t2 = Tag.create(name:"$WAG")

    t3 = Tag.create(name:"Design")

    e1.tags << t1
    e2.tags << t2
    e3.tags << t3

    p1.reload
    p2.reload

    p1.endorsements << e1
    p2.endorsements << e2

# RR: This may be outdated?

Article.create(title: 'Test Article',
               body: 'A test article. Cool!')
Article.create(title: 'Donald Trump Resigns from Presidential Candidacy',
               body: 'Thanks goodness')
Article.create(title: 'Child’s Description Of Heaven During Near-Death Experience Specifically Mentions Book Deal',
               body: 'I\'d read it!')
Article.create(title: 'New Poll Finds 74% Of Americans Would Be Comfortable Blaming Female President For Problems',
               body: 'Classic.')
