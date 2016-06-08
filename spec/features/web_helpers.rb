def sign_in_and_play
	visit('/')
	fill_in :player_1, with: 'Hassan'
	fill_in :player_2, with: 'Lukasz'
	click_button 'Submit'
end