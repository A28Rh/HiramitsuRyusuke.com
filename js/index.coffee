$ ->

  app.setBind()
  app.initialize()

app =

  initialize: ->
    #@hoverContentsAnimate()
    @setModal()
    @clearModal()

  setBind: ->
    @scrolPageAnchor()


  scrolPageAnchor: ->
    $('a[href^=#]').click ->
      console.log 'A'
      speed = 500
      href = $(@).attr('href')
      target = $(if href == '#' or href == '' then 'html' else href)
      position = target.offset().top
      $('body,html').animate { scrollTop: position }, speed, 'swing'
      false
    return

  setModal: ->
    $('.like').click ->
      $('#modal-overlay').fadeIn 500
      $('.modal-like').fadeIn 500
    $('.skill').click ->
      $('#modal-overlay').fadeIn 500
      $('.modal-skill').fadeIn 500
    $('.strength').click ->
      $('#modal-overlay').fadeIn 500
      $('.modal-strength').fadeIn 500
    $('.character').click ->
      $('#modal-overlay').fadeIn 500
      $('.modal-character').fadeIn 500
    $('.hobby').click ->
      $('#modal-overlay').fadeIn 500
      $('.modal-hobby').fadeIn 500
    $('.dream').click ->
      $('#modal-overlay').fadeIn 500
      $('.modal-dream').fadeIn 500
    $('.blog').click ->
      $('#modal-overlay').fadeIn 500
      $('.modal-blog').fadeIn 500
    $('.sns').click ->
      $('#modal-overlay').fadeIn 500
      $('.modal-sns').fadeIn 500

  clearModal: ->
    $('#modal-overlay').click ->
      $('#modal-overlay').fadeOut 500
      $('.modal-contents').fadeOut 500
    $('.modal-button-close').click ->
      $('#modal-overlay').fadeOut 500
      $('.modal-contents').fadeOut 500

  hoverContentsAnimate: ->
    $('.like').hover ->
      $('.like-slide').stop() .animate {
        "width": "100%"
      }, 500
      $('.like-title').stop() .animate {
        "color": "#ffffff"
      }, 500
    , ->
      $('.like-slide').stop() .animate {
        "width": "0%"
      }, 500
      $('.like-title').stop() .animate {
        "color": "#28C694"
      }, 500

    $('.skill').hover ->
      $('.skill-slide').stop() .animate {
        "width": "100%"
      }, 500
      $('.skill-title').stop() .animate {
        "color": "#ffffff"
      }, 500
    , ->
      $('.skill-slide').stop() .animate {
        "width": "0%"
      }, 500
      $('.skill-title').stop() .animate {
        "color": "#35A5E5"
      }, 500

    $('.strength').hover ->
      $('.strength-slide').stop() .animate {
        "width": "100%"
      }, 500
      $('.strength-title').stop() .animate {
        "color": "#ffffff"
      }, 500
    , ->
      $('.strength-slide').stop() .animate {
        "width": "0%"
      }, 500
      $('.strength-title').stop() .animate {
        "color": "#F28E4A"
      }, 500

    $('.character').hover ->
      $('.character-slide').stop() .animate {
        "width": "100%"
      }, 500
      $('.character-title').stop() .animate {
        "color": "#ffffff"
      }, 500
    , ->
      $('.character-slide').stop() .animate {
        "width": "0%"
      }, 500
      $('.character-title').stop() .animate {
        "color": "#ff4761"
      }, 500

    $('.hobby').hover ->
      $('.hobby-slide').stop() .animate {
        "width": "100%"
      }, 500
      $('.hobby-title').stop() .animate {
        "color": "#ffffff"
      }, 500
    , ->
      $('.hobby-slide').stop() .animate {
        "width": "0%"
      }, 500
      $('.hobby-title').stop() .animate {
        "color": "#ff4761"
      }, 500

    $('.dream').hover ->
      $('.dream-slide').stop() .animate {
        "width": "100%"
      }, 500
      $('.dream-title').stop() .animate {
        "color": "#ffffff"
      }, 500
    , ->
      $('.dream-slide').stop() .animate {
        "width": "0%"
      }, 500
      $('.dream-title').stop() .animate {
        "color": "#F28E4A"
      }, 500

    $('.blog').hover ->
      $('.blog-slide').stop() .animate {
        "width": "100%"
      }, 500
      $('.blog-title').stop() .animate {
        "color": "#ffffff"
      }, 500
    , ->
      $('.blog-slide').stop() .animate {
        "width": "0%"
      }, 500
      $('.blog-title').animate {
        "color": "#35A5E5"
      }, 500

    $('.sns').hover ->
      $('.sns-slide').stop() .animate {
        "width": "100%"
      }, 500
      $('.sns-title').stop() .animate {
        "color": "#ffffff"
      }, 500
    , ->
      $('.sns-slide').stop() .animate {
        "width": "0%"
      }, 500
      $('.sns-title').stop() .animate {
        "color": "#28C694"
      }, 500
