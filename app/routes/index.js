import Ember from 'ember';
import config from '../config/environment';

export default Ember.Route.extend({
	templateName: 'homepage',
	pageType: config.PAGE_TYPES.HOME,
	model: function() {
		return this.store.findAll('blog')
		.then((blogs)=> {
			let model = blogs
				.filterBy('pageType', this.pageType)
				.get('firstObject');
			model.set('host', config.apiHost);
			return model;
		});
	},
	init: function() {
		this._super();
		if (window.innerWidth < 600) {
			Em.run.schedule('afterRender', this, function() {
				let navHeight = $('.desktop-nav').outerHeight(),
					footerHeight = $('#Footer').outerHeight(),
					availHeight = window.innerHeight;
				$('main').css('min-height', availHeight - navHeight - footerHeight);
			});
		}
	}
});
