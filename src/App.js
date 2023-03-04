
import './App.css';
import Search from './components/search';
import Tree from './components/knowldgeTree';

function App() {
  return (
    <div className="App">
      {/* <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header> */}
      <Search />
      <div className="content-container">
        <Tree />
        <Tree />
        <Tree />
      </div>
      
    </div>
    
  );
}

export default App;
