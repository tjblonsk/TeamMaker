BucketList.Routers.Todos = Backbone.Router.extend({
  routes: {
    '': 'index'
  },
  initialize: function(){
    this.collection = new BucketList.Collections.Todos();
    this.collection.fetch({reset: true});
  },

  index: function(){
    var view = new BucketList.Views.TodosIndex({collection: this.collection});
    $('#container').html(view.render().el);
  }
});
