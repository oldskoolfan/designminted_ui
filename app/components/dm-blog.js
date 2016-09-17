import Ember from 'ember';

export default Ember.Component.extend({
	classNames: ['blog'],
	actions: {
		addComment() {
			let id = this.get('blog').get('id'),
				text = this.get('commentText');
			this.set('commentText', '');
			this.sendAction('addComment', id, text);
		}
	}
});
