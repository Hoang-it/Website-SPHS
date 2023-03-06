
import './App.css';
import Search from './components/search';
import KnowledgeTree from './components/knowledgeTree';
import Content from './components/content/content';
import Tags from './components/tags';
import 'bootstrap/dist/css/bootstrap.min.css';
import 'react-complex-tree/lib/style-modern.css';
import { useState } from 'react';

function App() {  
  const [data, setData] = useState([]);
  const [file, setFile] = useState("./data/12-8-41.pdf");
  const [tags, setTags] = useState(['asdhfkjasdf','aksdfhksd']);
  const [items, setItems] = useState({});
  
  const handleGetData = (data) => {
    setItems(data);
    console.log(data);
  }

  const changeFile = (file) => {
    setFile(file);
    console.log(file);
  }

  const changeTags = (tags) => {
    setTags(tags);
    console.log(tags);
  }

  return (
    <div className="App">      
      <Search getData={handleGetData}/>
      <div className="content-container">        
        <KnowledgeTree items={items} updateContent={changeFile}  updateTags={changeTags}/>
        <Content file={file} />
        <Tags tags={tags}/>
      </div>
      
    </div>
    
  );
}

export default App;
