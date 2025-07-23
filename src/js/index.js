import { gsap, ScrollTrigger, Observer, ScrollToPlugin } from "gsap/all";

import onAddedToCart from "./modules/components/add-to-cart";
import toggleCartPopup from "./modules/components/cart-modal";
import handleSortProducts from "./modules/components/handle-sorting-form";
import playVideo from "./modules/components/play-video";
import Forms from "./modules/components/forms";
import "./modules/index";

gsap.registerPlugin(ScrollTrigger, Observer, ScrollToPlugin);

Object.assign(window, { gsap, ScrollTrigger, Observer, ScrollToPlugin });

toggleCartPopup();
handleSortProducts();
onAddedToCart();
playVideo();
Forms();
