import DS from 'ember-data';

export default DS.Model.extend({
	contentCaption: DS.attr('string'),
	contentText: DS.attr('string'),
	contentData: DS.attr('string'),
	fileExtension: DS.attr('string'),
	contentType: DS.belongsTo('contentType', {async:false}),
	createdDate: DS.attr('string'),
	isText: (function () {
		return this.get('contentType').get('typeName') === 'TEXT';
	}).property('contentType.typeName'),
	isImage: (function () {
		return this.get('contentType').get('typeName') === 'IMAGE';
	}).property('contentType.typeName'),
	blog: DS.belongsTo('blog')
});
