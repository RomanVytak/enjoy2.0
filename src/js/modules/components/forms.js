const popup = document.querySelector("[data-message]");

export default function Forms() {
  const forms = document.querySelectorAll("[data-form]");

  forms.forEach(formsCF7);
}

function showPopup() {
  popup && popup.classList.add("active");
  document.addEventListener("click", onDocumentClick);
  document.addEventListener("keydown", onKeydown);
}

function onKeydown(e) {
  e.key === "Escape" && closePopup();
}
function onDocumentClick(e) {
  e.target.dataset.close && closePopup();
}

function closePopup() {
  popup && popup.classList.remove("active");
  document.removeEventListener("click", onDocumentClick);
  document.removeEventListener("keydown", onKeydown);
}

function formsCF7(form) {
  if (!form) return;
  form.addEventListener("wpcf7mailsent", handleFormEvent);
  form.addEventListener("wpcf7mailfailed", handleFormEvent);
  form.addEventListener("wpcf7invalid", handleFormEvent);

  function handleFormEvent(e) {
    const ress = e?.detail?.apiResponse || null;
    if (ress && e.type !== "wpcf7invalid") {
      e.preventDefault();
      showPopup();
    }
  }
}
