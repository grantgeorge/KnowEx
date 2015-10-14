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

    p1 = Post.create(title: 'How to build a Rails Web App with Friends',
                  body: 'A test article. Cool!',
                  user: grant_user,
                  created_at: '1-8-2015'
                  )
    p2 = Post.create(title: 'Donald Trump Resigns from Presidential Candidacy',
                   body: 'Thanks goodness',
                   user: grant_user,
                   created_at: '14-3-2014'
                   )

    p6 = Post.create(title: 'Shooting is bad mkay',
                   body: 'jk',
                   user: grant_user,
                   )


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

    p3 = Post.create(title: 'Child’s Description Of Heaven During Near-Death Experience Specifically Mentions Book Deal',
                  body: 'I\'d read it!',
                  user: rob_user,
                  created_at: '1-10-2015'
                  )
    p4 = Post.create(title: 'New Poll Finds 74% Of Americans Would Be Comfortable Blaming Female President For Problems',
                   body: 'Classic.',
                   user: rob_user)

    p5 = Post.create(title: 'KnowEx Site Unites Entrepreneurs in new way!',
                  body: 'Alex Chan is a genius!',
                  user: rob_user
                  )
    
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
    e4 = Endorsement.create(
      text:"MadSkillz",
      user_id: 1,
      endorseable_id: 4,
      endorseable_type: "Post"
      )


    t1 = Tag.create(name:"DevSkills")

    t2 = Tag.create(name:"$WAG")

    t3 = Tag.create(name:"Design")

    t4 = Tag.create(name:"MadSkillz");

    a1 = Advice.create(
      description: 'Guns are a sensitive topic! Mkay',
      user:rob_user,
      post_id:6
      )

    a1 << t4;
    
    e1.tags << t1
    e2.tags << t2
    e3.tags << t3
    e4.tags << t4

    p1.reload
    p2.reload
    p3.reload
    p4.reload

    p1.endorsements << e1
    p2.endorsements << e2
    p1.endorsements << e3
    p4.endorsements << e4

    p6.advices << a1
