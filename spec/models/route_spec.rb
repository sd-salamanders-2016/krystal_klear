require 'rails_helper'

describe Route do
  let (:route) { Route.new(name: 'Broadway',
                           description: 'Both sides of Broadway, between 7th and 8th Avenues',
                           employee_id: 1) }

  it 'has a name' do
    expect(route.name).to be_a String
  end

  it 'has a description' do
    expect(route.description).to be_a String
  end

  it 'has an employee_id' do
    expect(route.employee_id).to be_a Integer
  end

  it 'returns a sum for all the jobs that it owns' do
    route.jobs << Job.new(name: '707 Broadway',
                          description: '1st floor windows facing Broadway',
                          frequency: 2,
                          estimated_price: 10.00,
                          rainy_day: false,
                          client_id: 1,
                          route_id: 1)

    expect(route.sum_jobs).to eq 10.00
  end

end
