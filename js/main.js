(function() {
  var load;

  load = addEventListener('load', function() {
    var slogan, type, words, wrapper;
    removeEventListener('load', load);
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
      return document.cookie = "animation=played";
    } else {
      slogan.innerHTML = 'Just Write.';
      return wrapper.className = 'show';
    }
  });

}).call(this);
