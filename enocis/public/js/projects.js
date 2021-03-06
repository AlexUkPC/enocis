/* Main JS */

(function(html) {

  "use strict";
  
  html.className = html.className.replace(/\bno-js\b/g, '') + ' js ';

  /* Lightbox Projects */
  const ssLightboxProject = function() {

      const projectLinks = document.querySelectorAll('.project_item a');
      const modals = [];

      projectLinks.forEach(function(link) {
          let modalbox = link.getAttribute('href');
          let instance = basicLightbox.create(
              document.querySelector(modalbox),
              {
                  onShow: function(instance) {
                      //detect Escape key press
                      document.addEventListener("keydown", function(evt) {
                          evt = evt || window.event;
                          if(evt.keyCode === 27){
                          instance.close();
                          }
                      });
                  }
              }
          )
          modals.push(instance);
      });
      projectLinks.forEach(function(link, index) {
          link.addEventListener("click", function(e) {
              e.preventDefault();
              modals[index].show();
          });
      });

  };  // end ssLightboxProject

 /* initialize */
  (function ssInit() {

      ssLightboxProject();

  })();

})(document.documentElement);
