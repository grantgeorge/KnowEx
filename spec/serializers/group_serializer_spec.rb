require 'rails_helper'

describe GroupSerializer do
  it "creates JSON for the API" do
    serializer = GroupSerializer.new Group.new(id: 123, name: 'some group', location: 'some location')
    expect(serializer.to_json).to eql('{"id":123,"name":"some group","location":"some location"}')
  end
end
