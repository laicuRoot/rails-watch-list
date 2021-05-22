
const search = () => {
  const form = document.getElementById('search-movies');
  const results = document.getElementById('results')
  const searchMovies = (query) => {
    fetch(`https://www.omdbapi.com/?s=${query}&apikey=365f2501`)
      .then(response => response.json())
      .then((data)=> {
        data.Search.forEach((movie) => {
          const result = `<li class='list-inline-item'>
          <img src="${movie.Poster}" alt="">
          <p>${movie.Title}</p>
          </li>`;
          results.insertAdjacentHTML("beforeend", result);
        })
      })
  }
  form.addEventListener('submit', (event) => {
    event.preventDefault();
    const input = event.currentTarget.querySelector('.form-control').value;
    results.innerHTML = "";
    searchMovies(input);
  })
}


export { search }
