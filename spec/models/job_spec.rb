require 'rails_helper'

RSpec.describe Job, type: :model do
  let(:job) { Job.new(
      name: "Twitch HQ",
      description: "CEO's glasses need cleaning",
      frequency: 2,
      estimated_price: 300,
      client_id: rand(1..50),
      route_id: rand(1..10)
    )}

  describe 'has required instance variables' do
    context 'on initialization' do
      it 'name exists' do
        expect(job.name).to_not be_nil
      end

      it 'description exists' do
        expect(job.description).to_not be_nil
      end

      it 'estimated_price exists' do
        expect(job.estimated_price).to_not be_nil
      end

      it 'client_id exists' do
        expect(job.client_id).to_not be_nil
      end
    end
  end

  # describe 'produces work orders' do
  #   describe 'for this week' do
  #     it 'work orders did not shrink' do
  #       work_orders_for_week = WorkOrder.where(week: Time.now.strftime('%W').to_i).count
  #       Job.generate_work_order
  #       new_work_orders_for_week = WorkOrder.where(week: Time.now.strftime('%W').to_i).count
  #       expect(work_orders_for_week <= new_work_orders_for_week).to eq true
  #     end
  #   end
  #   describe 'for next week' do
  #     it 'work orders did not shrink' do
  #       shift = 1
  #       work_orders_for_week = WorkOrder.where(week: (Time.now.strftime('%W').to_i + shift)).count
  #       Job.generate_next_weeks_work_order
  #       new_work_orders_for_week = WorkOrder.where(week: (Time.now.strftime('%W').to_i + shift)).count
  #       expect(work_orders_for_week < new_work_orders_for_week).to eq true
  #     end
  #   end
  # end

  #
  # context 'when the product has a url' do
  #   it 'displays the url' do
  #     assign(:product, build(:product, url: 'http://example.com')
  #
  #     render
  #
  #     expect(rendered).to have_link 'Product', href: 'http://example.com'
  #   end
  # end
  #
  #
  #
  # it 'has a estimated_price' do
  #   expect(client.street_address).to eq('Company st.')
  # end
  #
  # it 'has a neighborhood' do
  #   expect(client.neighborhood).to eq('Company neighborhood')
  # end
  #
  # it 'has a zip code' do
  #   expect(client.zip_code).to eq('0000')
  # end

  # t.string :name, null: false
  # t.string :description, null: false
  # t.integer :frequency
  # t.float :estimated_price, null: false
  # t.integer :client_id, null: false
  # t.integer :route_id
  #
  # t.timestamps null: false
end
