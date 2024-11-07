jQuery(document).ready(function ($) {
  limitChars();
});

function limitChars() {
  // Select all input and textarea elements with maxlength attribute
  const elements = document.querySelectorAll('input[type="text"][maxlength], textarea[maxlength]');

  elements.forEach(function (element) {
    const maxChars = element.getAttribute('maxlength'); // Get the maxlength attribute

    // Create and insert a paragraph to display characters remaining
    const charCountElement = document.createElement('p');

    charCountElement.classList.add('char-count');
    charCountElement.style.color = 'darkgrey';
    charCountElement.style.fontSize = '12px';
    charCountElement.style.textAlign = 'right';
    charCountElement.style.marginTop = '0.1em';

    charCountElement.textContent = `${maxChars}/${maxChars} chars`;
    element.insertAdjacentElement('afterend', charCountElement);

    // Function to update character count
    function updateCharCount() {
      let chars = element.value.length;
      let remaining = maxChars - chars;

      if (chars > maxChars) {
        element.value = element.value.substr(0, maxChars);
        remaining = 0;
      }

      charCountElement.textContent = `${remaining} / ${maxChars} chars`;
    }

    // Change color to black on focus
    element.addEventListener('focus', function () {
      charCountElement.style.color = 'black';
    });

    // Revert to default color on blur
    element.addEventListener('blur', function () {
      charCountElement.style.color = 'darkgrey';
    });

    // Bind keydown and keyup events
    element.addEventListener('keydown', updateCharCount);
    element.addEventListener('keyup', updateCharCount);

    // Initialize character count on page load
    updateCharCount();
  });
}