export default class CookiesManager {
  set(name, age = 31536000) {
    document.cookie = `${name}=true; max-age=${age};`;
  }

  get(name) {
    const value = `; ${document.cookie}`;
    const parts = value.split(`; ${name}=`);
    if (parts.length === 2) return parts.pop().split(';').shift();
    return null;
  }
}
