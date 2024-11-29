const body = document.body;
const scroller = document.scrollingElement || body;

let lastTopPosition = 0;
let sto = null;

const stopScroll = (num = 1024) => {
  if (window.innerWidth > num) return;
  sto && clearInterval(sto);
  lastTopPosition = scroller.scrollTop;

  sto = setTimeout(() => {
    // scroller.style.overflow = "hidden";
    scroller.classList.add("no-scroll");
    body.classList.add("no-scroll");
    scroller.scrollTo(0, 0);
    // body.style.position = "fixed";
    body.style.top = lastTopPosition * -1 + "px";
  }, 310);
};

const startScroll = (num = 1024) => {
  if (window.innerWidth > num) return;
  sto && clearInterval(sto);
  // scroller.style.overflow = "";
  scroller.classList.remove("no-scroll");
  body.classList.remove("no-scroll");
  // body.style.position = "";
  body.style.top = "";
  scroller.scrollTo(0, lastTopPosition);
};

export { stopScroll, startScroll };
