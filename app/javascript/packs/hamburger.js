document.addEventListener('turbolinks:load', function() {
  var mobileMenu = document.getElementById('mobile-menu');
  if (mobileMenu) {
    mobileMenu.addEventListener('click', function() {
      var menu = document.querySelector('.mobile-menu-lists');
      if (menu) {
        menu.style.display = menu.style.display === 'block' ? 'none' : 'block';
      }
    });
  }
});
