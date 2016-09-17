import Ember from 'ember';

export default Ember.Controller.extend({
	actions: {
		saveMessage() {
			console.debug('Trying to save message...');

			let firstName = this.get('firstName'),
				lastName = this.get('lastName'),
				email = this.get('email'),
				message = this.get('message');

			console.debug("firstname: " + firstName);
			console.debug("lastname: " + lastName);
			console.debug("email: " + email);
			console.debug("message: " + message);

			if ((firstName == null || firstName === '') ||
				(lastName == null || lastName === '') ||
				(email == null || email === '') ||
				(message == null || message === '')) {
				return alert('All fields are required');
			}

			let contactMsg = this.store.createRecord("contact-form-message", {
				firstname: firstName,
				lastname: lastName,
				email: email,
				message: message,
				createdDate: new Date()
			});

			contactMsg.save().then(()=> {
				alert('Message saved successfully!');
				this.cancelForm();
			}, function(err) {
				alert("Problem saving message", err);
			});
		},
		cancel() {
			this.cancelForm();
			this.transitionToRoute('index');
		}
	},
	cancelForm() {
		this.set('firstName', null);
		this.set('lastName', null);
		this.set('email', null);
		this.set('message', null);
	}
});
