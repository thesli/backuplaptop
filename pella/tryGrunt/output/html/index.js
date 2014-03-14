jade.templates = jade.templates || {};
jade.templates['index'] = (function(){
  return function anonymous(locals, attrs, escape, rethrow, merge) {
attrs = attrs || jade.attrs; escape = escape || jade.escape; rethrow = rethrow || jade.rethrow; merge = merge || jade.merge;
var buf = [];
with (locals || {}) {
var interp;
buf.push('<html><head><title>dosomething here</title></head><body><h1>should work lol</h1></body></html>');
}
return buf.join("");
};
})();