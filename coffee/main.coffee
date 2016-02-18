# main.coffee


load = addEventListener 'load', ->
  removeEventListener('load', load)
  wrapper = document.getElementById 'outer-wrapper'
  slogan = document.getElementById 'slogan'
  words = 'Just Write.'.split ''

  type = ->
    if words.length > 0
      slogan.innerHTML += words.shift()
      setTimeout(type, 150)
    else
      wrapper.className = 'show'

  if document.cookie.indexOf('animation=played') is -1
    slogan.innerHTML = ''
    type()
    document.cookie="animation=played"
  else
    slogan.innerHTML = 'Just Write.'
    wrapper.className = 'show'
