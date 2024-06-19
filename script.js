const textarea = document.querySelector("textarea");
const btn = textarea.nextElementSibling;
const mock = btn.nextElementSibling;

mock.style.width = textarea.getBoundingClientRect().width + "px";

function onInput(e) {
  if (e.target.value.length <= 0) btn.setAttribute("disabled", true);
  else btn.removeAttribute("disabled");

  mock.value = e.target.value;
  const sh = mock.scrollHeight;
  if (sh > 160) return e.target.classList.add("scrollable");
  e.target.style.height = sh + "px";
  if (e.target.classList.contains("scrollable")) {
    e.target.classList.remove("scrollable");
  }
}

textarea.addEventListener("input", onInput);
