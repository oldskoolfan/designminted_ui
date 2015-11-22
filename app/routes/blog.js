import Ember from 'ember';
import config from '../config/environment';

export default Ember.Route.extend({
	model: function () {
		let model = Em.Object.create({
			host: config.apiHost
		});
		let session = this.controllerFor('application').get('session');
		if (session.isAuthenticated) {
			model.set('username', session.get('username'));
		}
		return this.store.findAll("blog")
		.then(function (result) {
			model.set('blogs', result);
			return model;
		}, function (error) {
			console.error(error);
		});
		
	}
});
