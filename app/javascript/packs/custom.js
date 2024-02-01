document.addEventListener("turbolinks:load", function(){
  if (window.location.pathname === '/') {
    function addSmoothScrollListener(id, targetSelector) {
      document.getElementById(id).addEventListener('click', function(event) {
        event.preventDefault();
        const target = document.querySelector(targetSelector);
        if (id === 'top-link' || id === 'top-link2') {
            window.scrollTo({
                top: 0,
                behavior: "smooth"
            });
        } else {
          window.scrollTo({
              top: target.getBoundingClientRect().top + window.pageYOffset - 170,
              behavior: "smooth"
          });
        }
      });
    }

    addSmoothScrollListener('top-link', '.aaa');
    addSmoothScrollListener('latest-info-link', '#small-image-box');
    addSmoothScrollListener('latest-news-link', '#latest-info');
    addSmoothScrollListener('amount-link', '.pricing-section');
    addSmoothScrollListener('instructor-link', '.instructor-section');

    addSmoothScrollListener('top-link2', '.aaa');
    addSmoothScrollListener('latest-info-link2', '#small-image-box');
    addSmoothScrollListener('latest-news-link2', '#latest-info');
    addSmoothScrollListener('amount-link2', '.pricing-section');
    addSmoothScrollListener('instructor-link2', '.instructor-section');

  }
});


window.addEventListener("load", function() {
  if (window.location.pathname === '/') {

    const images = document.querySelectorAll('.slide');
    let currentImageIndex = 0;

    setInterval(function() {
      images[currentImageIndex].classList.remove('active');
      currentImageIndex++;
      if (currentImageIndex === images.length) {
        currentImageIndex = 0;
      }
      images[currentImageIndex].classList.add('active');
    }, 3000);
  }
});