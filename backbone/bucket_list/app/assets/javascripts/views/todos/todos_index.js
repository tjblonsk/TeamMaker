BucketList.Views.TodosIndex = Backbone.View.extend({

  template: HandlebarsTemplates['todos/index'],

  initialize: function(){
    this.collection.on('reset', this.render, this);
  },

  render: function(){
    $(this.el).html(this.template({collection: this.collection}));
    return this;
  }

});
