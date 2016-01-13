(function() {
  var load, slogan, type, words, wrapper;

  load = addEventListener('load', -removeEventListener('load', load));

  wrapper = document.getElementById('outer-wrapper');

  slogan = document.getElementById('slogan');

  words = 'Just Write.'.split('');

  type = function() {
    if (words.length > 0) {
      slogan.innerHTML += words.shift();
      return setTimeout(type, 150);
    } else {
      return wrapper.className = 'show';
    }
  };

  if (document.cookie.indexOf('animation=played') === -1) {
    slogan.innerHTML = '';
    type();
    document.cookie = "animation=played";
  } else {
    slogan.innerHTML = 'Just Write.';
    wrapper.className = 'show';
  }

}).call(this);
