require 'rails_helper'

describe WorkOrder do
  let (:work_order) {WorkOrder.new(route_id: 1,
                                   job_id: 1,
                                   final_price: 30.00,
                                   notes: 'Finish before 9am',
                                   week: 26)}

  it 'has a route_id' do
    expect(work_order.route_id).to eq 1
  end

  it 'has a job_id' do
    expect(work_order.job_id).to be_a Integer
  end

  it 'has a final_price' do
    expect(work_order.final_price).to be_a Float
  end

  it 'can have notes' do
    expect(work_order.notes).to be_a String
  end

  it 'has an assigned week' do
    expect(work_order.week).to be_a Integer
  end

  it 'has a default value of incomplete' do
    expect(work_order.complete).to eq 'incomplete'
  end

  it 'responds to incomplete? method' do
    expect(work_order.incomplete?).to eq true
  end

  it 'responds to complete? method' do
    expect(work_order.complete?).to eq false
  end

  it 'responds to passed? method' do
    expect(work_order.passed?).to eq false
  end

end
