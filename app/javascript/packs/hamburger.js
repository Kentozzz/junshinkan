document.addEventListener('turbolinks:load', function() {
  const mobileMenu = document.getElementById('mobile-menu');
  const menuLists = document.querySelector('.mobile-menu-lists');

  // ハンバーガーメニューをクリックしたときの動作
  mobileMenu.addEventListener('click', function() {
      // メニューリストの表示状態を切り替える
      if (menuLists.style.display === 'none') {
          menuLists.style.display = 'block';
      } else {
          menuLists.style.display = 'none';
      }
  });

  // メニュー以外の場所をクリックしたときにメニューを閉じる
  document.addEventListener('click', function(e) {
      if (!mobileMenu.contains(e.target) && !menuLists.contains(e.target)) {
          menuLists.style.display = 'none';
      }
  });
  window.addEventListener('scroll', function() {
    menuLists.style.display = 'none';
  }, {passive: true});
    // mobile-menu上でのイベント伝播を止めるべき処理
  mobileMenu.addEventListener('click', function(e) {
      e.stopPropagation();
  });
});
