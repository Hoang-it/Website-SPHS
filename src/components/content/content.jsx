import styled from "styled-components";
import { Document, Page } from 'react-pdf/dist/esm/entry.webpack5';
import { useState } from 'react';

const TreeStyle = styled.div`
  .tree {
    width: 850px;
    height: 550px;
    overflow-y: scroll;
    background-color: grey;
    border-style: solid;

    Document, Page {
      width: 100%;
    }

  }
  .textLayer, .annotationLayer{
    visibility: hidden;
    display: none;
  }
  
`;

const Content = () => {
  const [numPages, setNumPages] = useState(null);

  function onDocumentLoadSuccess({ numPages }) {
    setNumPages(numPages);
  }
  return (
    <TreeStyle>
      <div className="tree">
        <Document file="./data/12-8-41.pdf" onLoadSuccess={onDocumentLoadSuccess}>
          {Array.from(new Array(numPages), (el, index) => (
              <Page width='828' key={`page_${index + 1}`} pageNumber={index + 1} />
            ))}
        </Document>
      </div>
    </TreeStyle>
  );
};
export default Content;
