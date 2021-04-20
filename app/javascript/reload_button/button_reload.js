// const reloadButton = document.getElementsByClassName("dropdown-item");

//  reloadButton.addEventListener("click", (event) => {
//     console.log(event);
// });
// reload = location.reload();

// export {reloadFunction}



const scrollToFunction = () => {
  const sectionClick = document.getElementById("question2")

  sectionClick.addEventListener("click", function() {
    const clickMe =  document.getElementById("section1").offsetTop
    window.scrollTo({ top: clickMe })
  })

}

export {scrollToFunction}

