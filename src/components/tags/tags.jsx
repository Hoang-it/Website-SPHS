import styled from "styled-components";
import { TagsInput } from "react-tag-input-component";
import React, { useState } from "react";
import { Badge } from "react-bootstrap";

const TreeStyle = styled.div`
  .tree {
    width: 300px;
    height: 550px;
    overflow-y: scroll;
    background-color: grey;
    border-style: solid;
  }  
  .badge {
    margin: 5px;
  }
`;

const Tags = () => {

  return (
    <TreeStyle>
      <div className="tree">
      <Badge>asjdfhasldkfj</Badge>
      <Badge>asjdfhasldkfj</Badge>
      <Badge>asjdfhasldkfj</Badge>
      <Badge>asjdfhasldkfsadfkhasdfkjhaslfkjashdflkjasdhfkalsdjhfaskdjfhakjdhfkjsadhfalksdfhasldkj</Badge>

      </div>
    </TreeStyle>
  );
};
export default Tags;
