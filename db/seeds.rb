# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ehouse = Group.create(name: 'E-House', location: 'everywhere')

grant_user = User.create(name: 'Grant George', email: 'grant@grantgeorge.io',
  uid: 'grant@grantgeorge.io', password: 'password', password_confirmation: 'password',
  nickname: 'grant')

grant_profile = Profile.create(
  introduction: "Hey! Call me Curious George!",
  user: grant_user)

grant_user.groups << ehouse

# TODO: Address error caused by added profile
# grant_user.profiles << grant_profile

Post.create(title: 'Test Post 1',
              body: 'Test Post 1',
              user: grant_user)
Post.create(title: 'Test Post 2',
               body: 'Test Post 2',
               user: grant_user)
Post.create(title: 'Test Post 3',
               body: 'Test Post 3',
               user: grant_user)
Post.create(title: 'Test Post 4',
               body: 'Test Post 4',
               user: grant_user)


rob_user = User.create(name: 'Rob Reinold', email: 'rreinold@gmail.com',
  uid: 'rreinold@gmail.com', password: 'password', password_confirmation: 'password',
  nickname: 'rob')

rob_profile = Profile.create(
  introduction: "Hey! I'm Rob the Builder!",
  user: rob_user)

rob_user.groups << ehouse

# TODO: Address error caused by added profile
# rob_user.profiles << rob_profile

Post.create(title: 'Test Post 1',
              body: 'Test Post 1',
              user: rob_user)
Post.create(title: 'Test Post 2',
               body: 'Test Post 2',
               user: rob_user)
Post.create(title: 'Test Post 3',
               body: 'Test Post 3',
               user: rob_user)
Post.create(title: 'Test Post 4',
               body: 'Test Post 4',
               user: rob_user)
