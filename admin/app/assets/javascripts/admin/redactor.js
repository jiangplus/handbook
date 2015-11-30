// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require redactor/redactor
//= require redactor/langs/sv
//= require redactor/plugins/fullscreen
//= require redactor/plugins/table

window.Godmin = window.Godmin || {};

Godmin.Redactor = (function() {
  function initialize() {
    initializeState();
  }

  function initializeState() {
    initializeRedactor($('[data-behavior~=redactor]'));
  }

  function initializeRedactor($el) {
    $el.redactor($el.data("options"));
  }

  return {
    initialize: initialize,
    initializeRedactor: initializeRedactor
  };
})();

$(function() {
  Godmin.Redactor.initialize();
});
