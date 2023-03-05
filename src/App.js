
import './App.css';
import Search from './components/search';
import KnowledgeTree from './components/knowledgeTree';
import Content from './components/content/content';
import Tags from './components/tags';
import 'bootstrap/dist/css/bootstrap.min.css';
import 'react-complex-tree/lib/style-modern.css';


function App() {
  return (
    <div className="App">      
      <Search />
      <div className="content-container">
        <KnowledgeTree />
        <Content />
        <Tags />
      </div>
      
    </div>
    
  );
}

export default App;
