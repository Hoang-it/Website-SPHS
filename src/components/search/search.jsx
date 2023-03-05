import styled from "styled-components";

const SearchStyle = styled.div`
  .search {
    background: #b0c4de;
    color: black;
    display: flex;
    justify-content: space-around;
    padding: 20px 20px;
  }
  .search-checkbox {
    display: flex;
    gap: 40px;
    margin-top: 10px;
  }
  .search-input {
    padding: 8px;
    border: 1px solid black;
    font-size: 17px;
  }
  .search-btn {
    margin-left: 20px;
    padding: 12px;
    border: 1px solid black;
    border-radius: 5px;
    background-color: #d3d3d3;
    cursor: pointer;
  }
`;

const Search = () => {
  return (
    <SearchStyle>
      <div className="search">
        <div className="search-checkbox">
          <div>
            <input
              type="checkbox"
              id="khainiem"
              name=""
              value="khainiem"
            ></input>
            <label for="khainiem"> Khái niệm</label>
          </div>
          <div>
            <input type="checkbox" id="dinhly" name="" value="dinhly"></input>
            <label for="dinhly"> Định lý | Tính chất</label>
          </div>
          <div>
            <input type="checkbox" id="baitap" name="" value="baitap"></input>
            <label for="baitap"> Dạng bài tập</label>
          </div>
          <div>
            <input
              type="checkbox"
              id="phuongphap"
              name=""
              value="phuongphap"
            ></input>
            <label for="phuongphap"> Phương pháp</label>
          </div>
        </div>
        <div>
          <input
            className="search-input"
            type="text"
            placeholder="Tìm kiếm"
          ></input>
          <button className="search-btn">Tìm kiếm</button>
        </div>
      </div>
    </SearchStyle>
  );
};
export default Search;
