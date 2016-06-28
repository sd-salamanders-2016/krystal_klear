require 'rails_helper'

describe Route do
  let (:route) { Route.new(name: 'Broadway', description: 'Both sides of Broadway, between 7th and 8th Avenues', employee_id: 1) }

  it 'has a name' do
    expect(route.name).to be_a String
  end

  it 'has a description' do
    expect(route.description).to be_a String
  end

  it 'has an employee_id' do
    expect(route.employee_id).to be_a Integer
  end

end
