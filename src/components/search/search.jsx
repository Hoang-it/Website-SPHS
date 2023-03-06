import styled from "styled-components";
import { useEffect, useState } from 'react';
import axios from 'axios';
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

const Search = ({getData}) => {
  const [getNoiDung, setNoiDung] = useState(true);
  const [getKhaiNiem, setKhaiNiem] = useState(true);
  const [getCongThuc, setCongThuc] = useState(true);
  const [getDangBaiTap, setDangBaiTap] = useState(true);
  const [getPhuongPhap, setPhuongPhap] = useState(true); 
  const [getSearchKey, setSearchKey] = useState(""); 


  function search(){
    const json = JSON.stringify({ 
      noidung: getNoiDung,
      khainiem: getKhaiNiem, 
      congthuc: getCongThuc, 
      baitap: getDangBaiTap, 
      phuongphap: getPhuongPhap, 
      searchKey: getSearchKey
    });
    alert(json)
    axios.post(`https://localhost:7115/api/CayKienThucs`, json)
      .then(res => {      
        console.log(res.data.Data);
        getData(res.data.Data);
      })
      .catch(error => console.log(error));
  }

  const handleChangeKhaiNiem = event => {    
    setKhaiNiem(event.target.checked);
  };

  const handleChangeDinhLy = event => {    
    setCongThuc(event.target.checked);
  };

  const handleChangeDangBaiTap = event => {    
    setDangBaiTap(event.target.checked);
  };

  const handleChangePhuongPhap = event => {    
    setPhuongPhap(event.target.checked);
  };
  const handleChangeNoiDung = event => {    
    setNoiDung(event.target.checked);
  };
  
  return (
    <SearchStyle>
      <div className="search">
        <div className="search-checkbox">
          <div>
            <input
              type="checkbox"
              id="khainiem"
              name=""
              value={getKhaiNiem}
              defaultChecked={getKhaiNiem}
              onChange={handleChangeKhaiNiem}
            ></input>
            <label for="khainiem"> Khái niệm</label>
          </div>
          <div>              
            <input type="checkbox" id="congthuc" name="" defaultChecked={getCongThuc} value={getCongThuc} onChange={handleChangeDinhLy}></input>
            <label for="dinhly"> Công thức</label>
          </div>
          <div>              
            <input type="checkbox" id="noidung" name="" defaultChecked={getNoiDung} value={getNoiDung} onChange={handleChangeNoiDung}></input>
            <label for="dinhly"> Công thức</label>
          </div>
          <div>
            <input type="checkbox" id="baitap" name="" defaultChecked={getDangBaiTap} value={getDangBaiTap} onChange={handleChangeDangBaiTap}></input>
            <label for="baitap"> Dạng bài tập</label>
          </div>
          <div>
            <input
              type="checkbox"
              id="phuongphap"
              name=""
              defaultChecked={getPhuongPhap}
              value={getPhuongPhap} onChange={handleChangePhuongPhap}
            ></input>
            <label for="phuongphap"> Phương pháp</label>
          </div>
        </div>
        <div>
          <input
            className="search-input"
            type="text"
            placeholder="Tìm kiếm"
            value={getSearchKey} onChange={evt => setSearchKey(evt)}
          ></input>
          <button className="search-btn" onClick={() => search()}>Tìm kiếm</button>
        </div>
      </div>
    </SearchStyle>
  );
};
export default Search;
