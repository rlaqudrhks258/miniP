<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
h2 {
  font-size: 1.7em;
  color: #5681b0;
}


h3 {
  font-size: 1.3em;
  color: #5c5c5c;
}

hr {
  width: 70px;
  background-color: #ccc;
}

span {
  font-size: 1em;
  color: #717171;
}

button {
  width: 150px;
  height: 40px;
  border-radius: 20px;
  border: 2px solid #fff;
  background-color: rgba( 255, 255, 255, 0 );
  color: #fff;
  display: block;
  margin: 0 auto;
}

#wrap {
  width: 100%;
  box-sizing: border-box;
}

.wrapper {
  width: 1200px;
  margin: 0 auto;
}
.wraper > div {
  display: inline-block;
}
.header > div {
  display: inline-block;
}

.top-logo {
  font-size: 1.8em;
  font-weight: 800;
  position: relative;
  top: 60px;
}

.tnb {
  float: right;
}

.menu-list {
  display: inline-block;
  float: left;
  position: relative;
  top: 50px;
  padding: 20px;
  font-size: 1.2em;
  letter-spacing: -0.03em;
  font-weight: 600;
}


.visual {
  width: 100%;
  height: 450px;
  background-color: #eee;
  position: relative;
  top: 80px;
}

.visual > img {
  overflow: hidden;
}

.slide-bottom-text-box {
  position: relative;
  background-color: #eaeaea;
  text-align: center;
  height: 190px;
  
}

.slide-bottom-text-box .text-box {
  transform: translateY(50%);
}

.bottom-text-box {
  position: relative;
  background-color: #eaeaea;
  height: 320px;
  padding-top: 30px;
}

.sitemap-list > h3 {
  font-size: 1.12em;
  color: #5681b0;
  font-weight: 700;
}
.sitemap-list > ul {
  font-size: 0.9em;
  line-height: 1.8em;
  list-style: none;
  padding-left: 7px;
  color: #555;
}

.sitemap-list {
  width: 200px;
  display: inline-block;
}

.map-img-box {
  width: 400px;
  height: 250px;
  display: inline-block;
  background-color: #fff;
  margin-right: 20px;
}


.map-text-box {
  float: right;
  width: 500px;
  display: inline-block;
}

.map-text-box > .map-list > span {
  width: 500px;
  display: inline-block;
  font-size: 0.9em;
}

.map-text-box > .map-list > span >hr {
  width: 100%;
}

.map-text-box > .map-list > span > p {
  font-weight: 700;
  padding: 0;
  margin: 0;
  color: #656565;
}

.map-list > h3 {
  font-size: 1.12em;
  color: #5681b0;
  font-weight: 700;
}
.map-list > ul {
  font-size: 0.8em;
  line-height: 1.8em;
  list-style: none;
  padding-left: 7px;
  color: #656565;
}

.map-list {
  width: 200px;
}

.bottom-text-box > .wrapper > div {
    vertical-align: top;
}

.content {
  text-align: center;
  background-color: #fff;
  width: 100%
}
.content-list {
  width: 330px;
  height: 420px;
  margin: 50px 20px;
  padding: 30px;
  background-color: #eeeeee;
  display: inline-block;
  position: relative;
  vertical-align: top;
}

.content-list-o-img {
  margin: 0 auto;
  width: 150px;
  height: 150px;
  border-radius: 50%;
  background-color: #fff;
}

.content-text {
  text-align: center;
  padding: 20px;
}

.middle-back-img-banner {
  width: 100%;
  height: 220px;
  background-color: #ccc;
  position: relative;
  padding: 30px;
}

.banner-text {
  margin:30px 0 20px 0;
}

.banner-text > h3, .banner-text > span {
  color: #fff;
}

.notice-board {
  width: 450px;
  margin: 30px 40px 30px 0;
  display: inline-block;
}
.gallery-board {
  width: 700px;
  display: inline-block;
}

.board-title {
  border-bottom: 1px solid #777777;
  padding: 10px 10px 3px 3px;
  font-size: 1.2em;
  font-weight: 700;
  color: #565656;
}

.board-title > div {
  display: inline-block;
}

.board-title > div > span {
  color: #5681b0;
}

.board-title > .more-btn {
  float: right;
  font-weight: 400;
}

.board-list {
  padding: 15px 0 5px 0;
  font-size: 0.9em;
  font-weight: 200;
  color: #656565;
  border-bottom: 1px solid #777;
}

.board-list > ul {
  list-style: none;
  padding-left: 15px;
  line-height: 1.7em;
}


.footer {
  width: 100%;
  background-color: #000;
  height: 60px;
}

.footer > p {
  transform: translateY(70%);
  text-align: center;
  color: #fff;
}</style>
</head>
<body>
<div id="wrap">
  <!-- header part -->
  <div class="wrapper">
    <div class="header">
      <div class="top-logo">Kim Byong Gwan</div>
      <div class="tnb">
        <ul class="menu-bar">
         <a href = "<c:url value = '/board/ListBoard.do'/>"> <li class="menu-list">커뮤니티</li></a>
          <a href = "<c:url value = 'listBoard.do'/>"> <li class="menu-list">마이페이지</li></a>
         
        </ul>
      </div>
    </div>
  </div>
  <!-- header end -->
  <!-- main-slide-img start -->
  <div class="visual">
    <img src="" />
  </div>
  <!-- main-slide-img end -->
  <div class="slide-bottom-text-box">
    <div class="wrapper">
      <div class="text-box">
        <h2>UJU ENERTECH</h2>
        <span>원자력 관련 기술을 기반으로 신기술인증(NET) 획득 및 국가녹색기술 대상을 수상하고 플라즈마 제염기술을 활용한 방사성 폐기물 제염,<br>
    폴리머 기반 방사선 차폐재 개발.공급 및 사용후핵연료 건식저장 엔지니어링과 기술 자문을 주 사업으로 연구.개발하는 엔지니어링 전문 기업</span>
      </div>
    </div>
  </div>
  <!-- main-contents start-->
  <div class="content">
    <div class="wrapper">
      <div class="content-list">
        <div class="content-list-o-img">
          <img src="" alt="" />
        </div>
        <div class="content-text">
          <h3>방사성 폐기물 관리</h3>
          <hr />
          <span>방사능 폐기물을 안정적인 화학 폐기물 상태로
전환하고 더 이상 쉽게 사용할 수 없는 저장 공
간을 절약하기 위해 방사능 폐기물의 부피를 
제한하기 위해서는 적절한 조절이 핵심이다.</span>
        </div>
      </div>
      <div class="content-list">
        <div class="content-list-o-img">
          <img src="" alt="" />
        </div>
        <div class="content-text">
          <h3>핵 시설 해체</h3>
          <hr />
          <span>핵 시설 폐기를 위한 전체적인 해결책을 개발할
때, 우리는 광범위한 기술과 라이선스 노하우에
의존한다.</span>
        </div>
      </div>
      <div class="content-list">
        <div class="content-list-o-img">
          <img src="" alt="" />
        </div>
        <div class="content-text">
          <h3>엔지니어링 및 컨설팅</h3>
          <hr />
          <span>우리는 당신이 안전 엔지니어링 분야, 허가,
디자인 개념의 개발 그리고 기술 문서화에서 
우리의 오랜 경험으로부터 이익을 얻기를 
바란다.</span>
        </div>
      </div>
    </div>
    <div class="middle-back-img-banner">
      <div class="wrapper">
        <div class="banner-text">
          <h3>사업 성과 자료</h3>
          <span>현재 진행 중이며 성공적으로 완료된 몇가지 프로젝트에 대해 자세히 알아보십시오.</span>
        </div>
        <button>show more</button>
      </div>
    </div>
  </div>
  <!-- main-contents end-->
  <!-- main-board start-->
  <div class="wrapper">
    <div class="notice-board">
      <div class="board-title">
        <div><span>N</span>OTICE & NEWS</div>
        <div class="more-btn">+</div>
      </div>
        <div class="board-list">
        <ul>
          <li><div>Lorem ipsum dolor sit amet. 2018-02-11</div></li>
          <li><div>Lorem ipsum dolor sit amet. 2018-02-11</div></li>
          <li><div>Lorem ipsum dolor sit amet. 2018-02-11</div></li>
          <li><div>Lorem ipsum dolor sit amet. 2018-02-11</div></li>
          <li><div>Lorem ipsum dolor sit amet. 2018-02-11</div></li>
        </ul>
       </div>     
    </div>
    <div class="gallery-board">
      <div class="board-title">
        <div><span>G</span>ALLERY BOARD</div>
        <div class="more-btn">+</div>
      </div>
        <div class="board-list">
        <ul>
          <li><div>Lorem ipsum dolor sit amet. 2018-02-11</div></li>
          <li><div>Lorem ipsum dolor sit amet. 2018-02-11</div></li>
          <li><div>Lorem ipsum dolor sit amet. 2018-02-11</div></li>
          <li><div>Lorem ipsum dolor sit amet. 2018-02-11</div></li>
          <li><div>Lorem ipsum dolor sit amet. 2018-02-11</div></li>
        </ul>
       </div>     
    </div>
  </div>
      <div class="bottom-text-box">
        <div class="wrapper">
          <div class="sitemap-list">
            <h3>사이트맵</h3>
            <ul>
              <li>회사소개</li>
              <li>사업분야</li>
              <li>자료실</li>
              <li>고객지원</li>
              <li>네트워크</li>
            </ul>
          </div>
        <div class="map-img-box">
          <img src="" alt="">
        </div>
        <div class="map-text-box">
            <div class="map-list">
              <h3>찾아오시는길</h3>
              <span>HIT 513-2호 본사 / FTC 812호 연구실 / 신소재공학관 B111 실험실<br />
서울특별시 성동구 왕십리로 222 한양대학교 HIT 513-2호<br />
<hr>
<p>지하철 이용시</p>
2호선 한양대역 2번출구/1,2,5호선 왕십리역 6번 출구<br />
<p>버스 이용시</p>
2012, 2014, 2016, 2222, 302, 121 한양대학교 앞 하차 도보 5분<br />
<hr />
jmk9445@hanyang.ac.kr  
              </span>
            </div>
         </div>
     </div>
  </div>
  <!-- main-board end-->
  <div class="footer">
    <p>Copyright © UJUENERTECH.COM All rights reserved.</p>
  </div>
</div>
</body>
</html>