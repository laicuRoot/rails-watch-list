const searchLogic = () => {

  const searchMovies = (query) => {
  fetch(`http://tmdb.lewagon.com/search/movie?language=en-US&query=${query}&page=1&include_adult=false`)
    .then(response => response.json())
    .then(data => {
      console.log(data)
    })
  }

  const form = document.getElementById('searchmovies')

  form.addEventListener('submit', (event)=>{
    event.preventDefault();
    const input = document.getElementById('search').value
    searchMovies(input)
  })
}

export { searchLogic };
