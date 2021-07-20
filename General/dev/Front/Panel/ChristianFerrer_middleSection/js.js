// Upload image with drag and drop
function dragoverImg() {
  const dropArea = document.getElementById("drop-area");

  dropArea.addEventListener("dragover", (event) => {
    event.stopPropagation();
    event.preventDefault();
    event.dataTransfer.dropEffect = "copy";
  });

  dropArea.addEventListener("drop", (event) => {
    event.stopPropagation();
    event.preventDefault();
    const fileList = event.dataTransfer.files;
    _fileList(fileList);
  });
}

// Upload image with a onclick event
function uploadImage() {
  const fileSelector = document.getElementById("file-selector");
  fileSelector.click();
  fileSelector.addEventListener("change", (event) => {
    const fileList = event.target.files;
    _fileList(fileList);
  });
}

//Show image in form
function _fileList(fileList) {
  const imgPreview = document.getElementById("img-preview");
  const imgSvg = document.getElementById("img-svg");
  if (fileList) {
    imgPreview.style.display = "block";
    imgSvg.style.display = "none";
    imgPreview.src = URL.createObjectURL(fileList[0]);
  }
}
