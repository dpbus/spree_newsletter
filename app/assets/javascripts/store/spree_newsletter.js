$('#newsletter_subscribe form').live('submit', function() {
  $(this).fadeTo(100, 0.35);
  $(this).children('input').blur();
});