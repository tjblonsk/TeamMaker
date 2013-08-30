var Player = Backbone.Model.extend({
  idAttribute: 'slug',
  defaults: {
    name: 'default',
    number: 0,
    position: 'default'
  }
});


var Players = Backbone.Collection.extend({
  model: Player
});

// var appView = new AppView({collection: this.players});
var appView = Backbone.View.extend({
  el: $('#main'),
  initialize: function(){
    var appViewTemplate = $('#appView-template').html();
    this.$el.html(appViewTemplate);

    this.list = $('#team-list');
  },

  render: function(){
    this.collection.each(function(player){

      var view = new PlayerListView({model: player});
    }), this);
  },
});



var AppRouter = Backbone.Router.extend({
  routes: {
    '':'index',
    '/player/:slug': 'getPlayer'
  },
  initialize: function(){
    this.players = new Players([
      new Player({name: "Tim", slug: "first-player"}),
      new Player({name: "Sagar", slug: "second-player"}),
      new Player({name: "Ryan", slug: "third-player"})
      ]);
    },

  index: function(){
    var appView = new AppView({collection: this.players});
  },

  getPlayer: function(){
  }

  });




$(function(){

  app = new AppRouter();

  Backbone.history.start();

});