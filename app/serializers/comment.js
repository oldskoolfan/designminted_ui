import DS from 'ember-data';

export default DS.RESTSerializer.extend({
	serialize(snapshot, options) {
    	var comment = this._super(...arguments);
    	comment.commentBlog = comment.blog;
    	delete comment.blog;
    	return comment;
    }
});