import axios from 'axios';

describe('Talents', () => {
	beforeEach(() => {
		axios.get('http://localhost:3001/cypress_rails_reset_state');
	});

	xit('successfully loads', () => {
		// must use localhost:3000 here because by default
		// cypress will try and load 3001, the api server
		cy.visit('localhost:3000/');
	});

	xit('open create form from talents - Add Your Own! after login', () => {
		cy.visit('localhost:3000/').contains('My Account');
		// Can click 'My Account' to toggle dropdown list
		cy.get('.nav-action').last().click();
		// When not logged in, dropdown list show login links, click to login as User 1
		cy.contains('User 5');
		cy.get('.dropdown__login li:last').click();

		// Go to Event explore
		cy.contains('Talents').click();
		cy.contains('Add Your Own!').click();
		cy.contains('Accepting Invitation?');
	});

	xit('open create form from Create - New Talent after login', () => {
		cy.visit('localhost:3000/').contains('My Account');
		// Can click 'My Account' to toggle dropdown list
		cy.get('.nav-action').last().click();
		// When not logged in, dropdown list show login links, click to login as User 1
		cy.contains('User 5');
		cy.get('.dropdown__login li:last').click();

		// Go to Talent explore
		cy.contains('Create').click();
		cy.contains('New Talent').click();
		cy.contains('Accepting Invitation?');
	});

	xit('error if submit an empty talent profile', () => {
		cy.visit('localhost:3000/').contains('My Account');
		// Can click 'My Account' to toggle dropdown list
		cy.get('.nav-action').last().click();
		// When not logged in, dropdown list show login links, click to login as User 1
		cy.contains('User 5').get('.dropdown__login li:last').click();

		// Go to Event explore
		cy.contains('Create').click();
		cy.contains('New Talent').click();
		cy.contains('Accepting Invitation?');

		// Submit without info
		cy.contains('Submit').click();
		cy.contains('Please give us a name to promote you.');
	});

	xit('submit a talent profile with details provided', () => {
		cy.visit('localhost:3000/').contains('My Account');
		// Can click 'My Account' to toggle dropdown list
		cy.get('.nav-action').last().click();
		// When not logged in, dropdown list show login links, click first option to login as User 1
		cy.contains('User 5');
		cy.get('.dropdown__login li:last').click();

		// Go to Event explore
		cy.contains('Create').click();
		cy.contains('New Talent').click();
		cy.contains('Accepting Invitation?');

		// Submit with info
		cy.get('input[name=name]').type('Nicole');
		cy.get('select[name=location_id]').select('Vancouver');
		cy.get('select[name=genre_id]').select('Video Games');
		cy.get('input[name=image_url]').type(
			'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRfdGXhrM2d89IboXmquNuIilS6-u0-4cblRQ&usqp=CAU'
		);
		cy.get('input[name=personal_link]').type('http://nickcool.twitter.com');
		cy.get('textarea[name=description]').type('Talent creation testing');
		cy.contains('Submit').click();
		cy.contains('Talent profile submitted successfully!')
			.get('#modal-close')
			.click();
		cy.contains('Video Games talent in Vancouver');

		// Click find event button will redirect to browse events page
		cy.get('.button-explore-btn').click();
		cy.contains('Explore Events');
	});

	it('talent can accpte event invitation', () => {
		cy.visit('localhost:3000/').contains('My Account');
		// Can click 'My Account' to toggle dropdown list
		cy.get('.nav-action').last().click();
		// When not logged in, dropdown list show login links, click to login as User 1
		cy.get('.dropdown__login li').eq(1).click();
		// cy.get('.dropdown__login li:first').click();

		// Go to user profile and check My Profile
		cy.get('.nav-action').last().click();
		cy.get('.dropdown__login a:last').click();

		// Click the My Performance button to toggle display
		cy.contains('Name : Nicola Jones');
		cy.wait(500).contains('My Performances').click();
		cy.get('.profile-sub-item-title').eq(3).click();

		// Redirect to event show page with invitation field enabled
		cy.wait(500).contains('Anime Revolution 2020');
		cy.contains('You have an invitation to perform at this event!');
		cy.contains('Decline');
		cy.contains('Accept');

		// Click accept button to accept invitation
		cy.get('.event-invite-btn-accept').click();
		cy.contains('Invitation was accepted!');
		cy.get('[alt=CSGO]');
	});
});
