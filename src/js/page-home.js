playVideo();

function playVideo() {
  const playButtons = document.querySelectorAll("[data-play-video]");
  const addEvent = "addEventListener";
  const removeEvent = "removeEventListener";
  const full = "fullscreenchange";
  const full_webkit = "webkitfullscreenchange";

  if (!playButtons.length) return;

  playButtons.forEach((button) => {
    const video = button.parentNode.querySelector("video");

    const onFullScreenExit = () => {
      if (!document.fullscreenElement || !document.webkitFullscreenElement) {
        video.pause();
        document[removeEvent](full, onFullScreenExit);
        document[removeEvent](full_webkit, onFullScreenExit);
      }
    };

    const onButtonClick = () => {
      if (video.requestFullscreen) {
        video.requestFullscreen();
      } else if (video.webkitRequestFullscreen) {
        video.webkitRequestFullscreen(); // for Safari
      } else if (video.msRequestFullscreen) {
        video.msRequestFullscreen(); // for IE/Edge
      }
      document[addEvent](full, onFullScreenExit);
      document[addEvent](full_webkit, onFullScreenExit);
      video.play();
      video.muted = false;
    };

    button.addEventListener("click", onButtonClick);
  });
}
