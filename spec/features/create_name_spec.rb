require 'spec_helper'

describe 'App' do
	it 'allows players to enter their names' do
		sign_in_and_play
		expect(page).to have_content 'Hassan vs. Lukasz'
	end
	it "allows palyers to see hp" do
		sign_in_and_play
		expect(page).to have_content '100HP'
	end
end