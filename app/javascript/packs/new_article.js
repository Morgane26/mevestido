const divColor = document.getElementById("div-article-color");
const colorSelector = document.getElementById("article_color_id");
const colors = JSON.parse(divColor.dataset.colors);

if (divColor) {
  colorSelector.addEventListener("change", (event) => {
    const colorId = event.target.value;
    const colorHex = colors[colorId];
    divColor.style["background-color"] = colorHex;
  });
}

const wearableTypeSelector = document.getElementById("article_wearable_type");
const selectors = document.querySelectorAll(".wearable");

selectors.forEach((selector) => {
  selector.addEventListener('change', (event) => {
    const value = event.target.value;

    selectors.forEach((selector) => {
      selector.firstElementChild.lastElementChild.value = value;
    })
  });
});

wearableTypeSelector.addEventListener("change", (event) => {
  const type = event.target.value;

  selectors.forEach((selector) => {
    selector.firstElementChild.lastElementChild.selectedIndex = 0;

    if (!selector.classList.contains("hidden")) {
      selector.classList.add("hidden");
    }
  });


  const wearableSelector = document.getElementById(type);
  wearableSelector.classList.remove("hidden");
})
