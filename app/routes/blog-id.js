import Ember from 'ember';
import BlogRoute from './blog';

export default BlogRoute.extend({
	templateName: 'blog',
	model(params) {
		const id = params.id;
		let model = this.getBlogModel();
		return this.get('store').findRecord('blog', id)
		.then(function(blog) {
			let comments = blog.get('comments');
			comments = comments.filterBy('isApproved', true);
			blog.set('comments', comments);
			model.set('blogs', [blog]);
			return model;
		});
	}
});
