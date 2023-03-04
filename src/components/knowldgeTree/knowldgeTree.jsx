import styled from "styled-components";

const TreeStyle = styled.div`
  .tree {
    width: 100%;
    height: 500px;
    overflow-y: scroll;
    background-color: grey;
  }
`;

const Tree = () => {
  return (
    <TreeStyle>
      <div className="tree">
        You can use the overflow property when you want to have better control
        of the layout. The overflow property specifies what happens if content
        overflows an element's box.
      </div>
    </TreeStyle>
  );
};
export default Tree;
