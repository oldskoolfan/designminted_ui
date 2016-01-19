import Ember from 'ember';

export default Ember.Controller.extend({
	session: Ember.inject.service('session'),
	actions: {
		createComment(id, commentText) {
			if (commentText == null || commentText === '') return false;

			console.debug('creating comment with text: ' + commentText);

			let blog = this.store.peekRecord('blog', id),
				comment,
				userId = this.get('session').get('data.userid'),
				user = this.store.peekRecord('user', userId);
			
			if (blog != null) {
				comment = this.store.createRecord('comment', {
					commentText: commentText,
					commentDate: new Date(),
					isApproved: false,
					blog: blog,
					user: user
				});
				comment.save().then(function() {
					alert('Comment saved successfully!');
				}, function (err) {
					alert('Problem saving comment: ' + err);
				});
			}
		}
	}
});
