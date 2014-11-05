function wc() {
  var ps = document.querySelectorAll('p');
  var c = 0;
  for (var i = 0; i < ps.length; ++i) {
    var p = ps[i];
    c += p.textContent.length;
  }
  return c;
}
