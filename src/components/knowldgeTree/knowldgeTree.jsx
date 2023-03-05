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
        <embed
          src="/src/components/knowldgeTree/5 Practice Tests for the VNU-EPT.pdf"
          width="500"
          height="500"
          type="application/pdf"
        ></embed>
      </div>
    </TreeStyle>
  );
};
export default Tree;
