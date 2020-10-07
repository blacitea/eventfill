import axios from 'axios';

describe('Talents', () => {
	before(() => {
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

		// Go to Event explore
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

	xit('submit an event with details provided', () => {
		cy.visit('localhost:3000/').contains('My Account');
		// Can click 'My Account' to toggle dropdown list
		cy.get('.nav-action').last().click();
		// When not logged in, dropdown list show login links, click first option to login as User 1
		cy.contains('User 1');
		cy.get('.dropdown__login li:first').click();

		// Go to Event explore
		cy.contains('Create').click();
		cy.contains('New Event').click();
		cy.contains('Accepting Talents?');

		// Submit without info
		cy.get('input[name=name]').type('My cool event');
		cy.get('select[name=location_id]').select('Vancouver');
		cy.get('select[name=genre_id]').select('Video Games');
		cy.get('input[name=start]').type('2020-11-01');
		cy.get('input[name=end]').type('2020-11-03');
		cy.get('input[name=image_url]').type(
			'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRfdGXhrM2d89IboXmquNuIilS6-u0-4cblRQ&usqp=CAU'
		);
		cy.get('input[name=max_attendees]').type('10');
		cy.get('textarea[name=description]').type('Event creation testing');
		cy.contains('Submit').click();
		cy.contains('Event submitted successfully!').get('#modal-close').click();
		cy.contains('Video Games event in Vancouver');
	});

	xit('invite talent to owned event', () => {
		cy.visit('localhost:3000/').contains('My Account');
		// Can click 'My Account' to toggle dropdown list
		cy.get('.nav-action').last().click();
		// When not logged in, dropdown list show login links, click to login as User 1
		cy.contains('User 1');
		cy.get('.dropdown__login li:first').click();

		// Go to user profile and check My Events
		cy.get('.nav-action').last().click();
		cy.get('.dropdown__login a:last').click();

		// Click the My Events button to toggle display
		cy.wait(500).contains('My Events').click();
		cy.wait(500).contains('Perfect Fit').click();

		// Redirect to event show page
		cy.wait(500).contains('Perfect Fit');
		cy.contains('Handmade Crafts event in Montreal');
		cy.contains('Remaining spots:');

		// Click invite talent button will redirect to browse talent page
		cy.get('.button-explore-btn').click();
		cy.contains('Explore Talents');
		cy.wait(500).contains('Kyuuno');

		// Can filter with location
		cy.get('select').first().select('Vancouver');
		cy.should('not.contain', 'Kyuuno');

		// Click a talent picture will redirect to talent show page
		cy.wait(500).contains('AiChan').click();
		cy.contains('Handmade Crafts talent in Vancouver');
		cy.get('[alt=AiChan]');

		// Open up modal with invitation form
		cy.wait(500).contains('Invite To Event').click();
		cy.wait(500).get('#modal-close');
		// cy.get('[alt=AiChan]');
		// cy.get('.talent-name').should('contain', 'AiChan');
		cy.wait(500).get('select[name=event_id]').select('Perfect Fit');

		// //Error if no event selected
		// // cy.get('.form-submit').click();
		// // cy.contains('Event required to send invitation.');

		// //Success submit if event selected
		// // cy.get('select[name=event_id]').select('Perfect Fit');
		cy.wait(500).get('.form-submit').click();
		cy.contains('Invitation sent');
	});
});
