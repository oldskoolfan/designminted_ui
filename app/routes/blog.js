import Ember from 'ember';
import config from '../config/environment';

export default Ember.Route.extend({
	getBlogModel() {
		let model = Em.Object.create({
			host: config.apiHost
		});
		let session = this.controllerFor('application').get('session');
		if (session.isAuthenticated) {
			model.set('username', session.get('username'));
			model.set('placeholder', "Share your thoughts, " +
				session.get('data.username') +
				"! \n\n(Note that comments will appear when approved by the admin)");
		}
		return model;
	},
	model: function () {
		let model = this.getBlogModel();
		return this.get('store').findAll('blog')
		.then(function (result) {
			result = result.filterBy('pageType', config.PAGE_TYPES.BLOG)
			result.forEach((blog) => { // only want approved comments
				var comments = blog.get('comments');
				comments = comments.filterBy('isApproved', true);
				blog.set('comments', comments);
			});
			model.set('blogs', result);
			return model;
		}, function (error) {
			console.error(error);
		});

	}
});
