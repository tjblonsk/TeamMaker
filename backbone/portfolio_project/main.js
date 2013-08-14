/*
project items:
  name
  github url
  live url
  thumnail url
  description
*/


var project = {
  name: "My Portfolio Page",
  github_url: "http://github.com/tjblonsk",
  live_url: "http://tjblonsk.com",
  thumbnail_url: "http://github.com/preview.png",
  description: "This is my really awesome portfolio"
};

$(function(){

  source = $('#project-template').html();
  template = Handlebars.compile(source);
  templateHTML = template(project);
  $('#main').append(templateHTML);
});