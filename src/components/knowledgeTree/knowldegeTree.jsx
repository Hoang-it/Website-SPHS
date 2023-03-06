import styled from "styled-components";
import { UncontrolledTreeEnvironment, Tree, StaticTreeDataProvider } from 'react-complex-tree';

const TreeStyle = styled.div`
  .tree {
    width: 300px;
    height: 550px;
    overflow-y: scroll;
    background-color: white;
    border-style: solid;
  }
`;

const KnowledgeTree = ({items, updateContent, updateTags}) => {    
  const dataProvider = new StaticTreeDataProvider(items, (item, newName) => ({ ...item, data: newName }));
  console.log("asdfsdaf");
  console.log(items);
  return (
    <TreeStyle>
      <div className="tree">
        <UncontrolledTreeEnvironment
          dataProvider={dataProvider}
          getItemTitle={item => item.data}
          viewState={{}}
          onFocusItem={item => {
            console.log(item);
            if (item.children.length === 0){
              updateContent(item.content)
              updateTags(item.tags)
            }
          }}
        >
          <Tree treeId="tree-2" rootItem="root" treeLabel="Tree Example" />
        </UncontrolledTreeEnvironment>;
      </div>
    </TreeStyle>
  );
};
export default KnowledgeTree;
