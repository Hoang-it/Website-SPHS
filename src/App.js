
import './App.css';
import Search from './components/search';
import KnowledgeTree from './components/knowledgeTree';
import Content from './components/content/content';
import Tags from './components/tags';
import 'bootstrap/dist/css/bootstrap.min.css';
import 'react-complex-tree/lib/style-modern.css';
import { useState } from 'react';

const itemsTest = {
  root: {
    index: 'root',
    canMove: true,
    isFolder: true,
    children: ['child1', 'child2'],
    data: 'Root item',
    canRename: true,
  },
  child1: {
    index: 'child1',
    canMove: true,
    isFolder: false,
    children: [],
    data: 'Child item 1',
    canRename: true,
  },
  child2: {
    index: 'child2',
    canMove: true,
    isFolder: true,
    children: ['child3'],
    data: 'Child item 2',
    canRename: true,
  },
  child3: {
    index: 'child3',
    canMove: true,
    isFolder: false,
    children: [],
    data: 'Child item 2',
    canRename: true,
  },
};
function App() {  
  const [file, setFile] = useState("");
  const [tags, setTags] = useState([]);
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
