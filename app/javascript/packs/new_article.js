import _ from "lodash"

const divColor = document.getElementById("div-article-color");
const colorSelector = document.getElementById("article_color_id");
const colors = JSON.parse(divColor.dataset.colors);
const images = JSON.parse(divColor.dataset.images);

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

  selectors.forEach((selector) => {
    selector.addEventListener("change", (event) => {
      const kind = _.snakeCase(event.target.selectedOptions[0].text);
      const image = images[type][kind];
      const imageDiv = document.querySelector(".img-article");
      imageDiv.src = image;
    });
  });
});


// const wearableImageClass = document.querySelector("img-article");
// const wearableSelectorImage = document.getElementById("article_wearable_id");

// if (wearableImage) {
//   wearableSelectorImage.addEventListener("change", (event) => {
//     const wearableId = event.target.value;
//     const wearableCode = wearable[wearableId];
//     wearableImage
//   })
// }
