# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  if $('.pagination').length
    $('.pagination').hide()
    $(window).scroll ->
      url = $('.pagination').children('.next').children('a').attr('href')
      if url && $(window).scrollTop() > $(document).height() - $(window).height() - 50
        $(".pagination").text("Loading more posts...")
        $.getScript(url)
    $(window).scroll()
  end