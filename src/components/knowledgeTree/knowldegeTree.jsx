import styled from "styled-components";
import { useEffect, useState } from 'react';
import { ControlledTreeEnvironment, Tree, StaticTreeDataProvider } from 'react-complex-tree';

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
  const [focusedItem, setFocusedItem] = useState();
  const [expandedItems, setExpandedItems] = useState([]);
  const [selectedItems, setSelectedItems] = useState([]);
  return (
    <TreeStyle>
      <div className="tree">
        {items && <ControlledTreeEnvironment
          items={items}
          getItemTitle={item => item.data}
          viewState={{
            ['tree-2']: {
              items,
              focusedItem,
          expandedItems,
          selectedItems,              
            },
          }}
      onExpandItem={item => setExpandedItems([...expandedItems, item.index])}
      onCollapseItem={item =>
        setExpandedItems(expandedItems.filter(expandedItemIndex => expandedItemIndex !== item.index))
      }
      onSelectItems={items => setSelectedItems(items)}
          onFocusItem={item => {
            setFocusedItem(item.index)
            console.log(item);
            if (item.children.length === 0){
              updateContent(item.content)
              updateTags(item.tags)
            }
          }}
        >
          <Tree treeId="tree-2" rootItem="root" treeLabel="Tree Example" />
        </ControlledTreeEnvironment>}
      </div>
    </TreeStyle>
  );
};
export default KnowledgeTree;
