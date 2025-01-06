import React, { useState } from 'react';


function App() {
 
  const [name, setName] = useState('');
  const [data, setData] = useState([]);
  const [searchResult, setSearchResult] = useState(null);

  

  const handleSearch = (event) => {
    event.preventDefault();
    

    fetch(`http://127.0.0.1:4000/celebs?name=${name}`)
      .then(response => response.json())
      .then(data => {
        setData(data)
        setSearchResult(`Personality type of ${name} is, ${data.map((item) => item.four_letter)}`);
        
      })
      .catch(error => console.error(error));
 
  };

  return (
    <div >
      <h1>Find Personalities of Celebrities</h1>
      <form onSubmit={handleSearch}>
        <input
          type="text"
          value={name}
          onChange={(e) => setName(e.target.value)}
          placeholder="Enter name"
        />
        <button type="submit">Search</button>
      </form>
      {searchResult && <p>{searchResult}</p>}
    </div>
  );
}

export default App;