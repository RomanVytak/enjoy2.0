export default function handleSortProducts() {
  const form = document.querySelector("[data-ordering-form]");

  if (!form) return;

  const orderingRow = document.querySelector("[data-ordering-row]");
  const sortName = document.querySelector(".sort_by");
  const sortByButtons = orderingRow.querySelectorAll(".by");

  const toggleList = () => {
    const opened = orderingRow.classList.contains("opened");
    const event = opened ? "removeEventListener" : "addEventListener";

    orderingRow.classList.toggle("opened", !opened);
    document.body[event]("click", onBodyClick);
  };

  const onBodyClick = (e) => {
    if (
      !e.target.closest(".catalog--ordering") ||
      e.target.classList.contains("by")
    ) {
      toggleList();
    }
  };

  const handleClick = (e) => {
    const button = e.target;
    const sortByValue = button.value;

    if (!sortByValue) return;

    const q_form = $("form[data-ordering-form]");

    sortName.innerHTML = button.textContent;
    sortByButtons.forEach((b) => {
      b.classList.toggle("active", b.value == sortByValue);
    });

    if (q_form) {
      const input = q_form.find("input[name=orderby]");
      input.val(sortByValue);
      q_form.trigger("submit");
    } else {
      const input = form.querySelector("[name=orderby]");
      input.value = sortByValue;
      form.submit();
    }
  };

  sortByButtons.forEach((by) => {
    by.addEventListener("click", handleClick);
  });

  orderingRow.addEventListener("click", toggleList);
}
