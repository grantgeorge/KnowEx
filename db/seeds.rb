# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = User.create(name: 'Grant George', email: 'grant@grantgeorge.io',
  uid: 'grant@grantgeorge.io', password: 'password', password_confirmation: 'password',
  nickname: 'grant')

g = Group.create(name: 'E-House', location: 'everywhere')

u.groups << g

Post.create(title: 'Test Post 1',
              body: 'Test Post 1',
              user: u)
Post.create(title: 'Test Post 2',
               body: 'Test Post 2',
               user: u)
Post.create(title: 'Test Post 3',
               body: 'Test Post 3',
               user: u)
Post.create(title: 'Test Post 4',
               body: 'Test Post 4',
               user: u)
