<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div id="main">
    <div class="row">
        <div class="col-4">
            <h2><i class="bi bi-snow3" style="color: blue"></i><b> μ£Όμ μμ</b></h2>
        </div>
        <div class="col-7"></div>
    </div>


    <div class="row">
        <div class="col"></div>
        <div class="col-5" style="margin-left: -35px;margin-right: 30px">
            <li class="movlist" style="margin-right: 50px">
                <div class="movcontent" style="margin-left: -35px">
                    <a href="/replay/view?rno=${rmvo.rno}">
                        <div class="replayli" style="position: relative"><img src="${rmvo.fname}" style="width: 450px; height: 300px"></div>
                        <div style="position: absolute; margin: -40px 0 0 0"><button type="button" class="btn btn-primary" style="font-size: 15px">${rmvo.event}</button></div>
                        <div style="position: absolute; margin: -40px 0 0 311px"><button type="button" class="btn btn-primary"><i class="bi bi-play-fill"></i></button></div>
                        <div style="position: absolute; margin: -40px 0 0 353px"><button type="button" style="width: 95px; height: 40px; font-size: 20px" class="btn btn-dark">2:30</button></div>
                    </a>
                    <p style="width:380px; font-size:25px">${rmvo.title}</p>
                </div>
            </li>
        </div>
        <div class="col-5" style="margin-right: 30px">
            <li class="movlist" style="margin-right: 50px">
                <div class="movcontent" style="margin-left: -35px">
                    <a href="/replay/view?rno=${rrmvo.rno}">
                        <div class="replayli" style="position: relative"><img src="${rrmvo.fname}" style="width: 450px; height: 300px"></div>
                        <div style="position: absolute; margin: -40px 0 0 0"><button type="button" class="btn btn-primary" style="font-size: 15px">${rrmvo.event}</button></div>
                        <div style="position: absolute; margin: -40px 0 0 311px"><button type="button" class="btn btn-primary"><i class="bi bi-play-fill"></i></button></div>
                        <div style="position: absolute; margin: -40px 0 0 353px"><button type="button" style="width: 95px; height: 40px; font-size: 20px" class="btn btn-dark">2:30</button></div>
                    </a>
                    <a href="">
                        <p style="width:380px; font-size:25px">${rrmvo.title}</p>
                    </a>
                </div>
            </li>
        </div>
        <div class="col"></div>
    </div>

    <div class="row">
        <div class="col">
            <h2><i class="bi bi-snow3" style="color: blue"></i><b> λͺ¨λ  μμ</b></h2>
        </div>
    </div>

    <div class="form-group row">
        <div class="col"></div>
            <select name="event" id="event" class="form-control col-3" style="font-size: 25px; font-weight: bold; margin-right: 10px">
                <option>μ’λͺ©</option>
                <option value="skijump">μ€ν€μ ν</option>
                <option value="skeleton">μ€μΌλ ν€</option>
                <option value="short">μΌνΈνΈλ</option>
                <option value="curling">μ»¬λ§</option>
                <option value="figure">νΌκ²¨</option>
            </select>

        <select name=country id="country" class="form-control col-3" style="font-size: 25px; font-weight: bold; margin-right: 10px">
            <option>ν</option>
            <option value="kor">νκ΅­</option>
            <option value="usa">λ―Έκ΅­</option>
            <option value="gbr">μκ΅­</option>
            <option value="fra">νλμ€</option>
            <option value="jpn">μΌλ³Έ</option>
        </select>
        <div class="col-5"></div>
    </div>

    <div class="row">

        <div class="col" id="playmovs">
            <ul id="playmovsul">
            <c:forEach var="r" items="${rbd}" >
            <li class="movlist" style="margin-right: 40px">
                <div class="movcontent" style="margin-left: -35px; margin-bottom: 35px">
                <a href="/replay/view?rno=${r.rno}">
                    <div class="replayli" style="position: relative"><img class="listimg" src="${r.fname}"></div>
                    <div style="position: absolute; margin: -40px 0 0 0"><button type="button" class="btn btn-primary" style="font-size: 15px">${r.event}</button></div>
                    <div style="position: absolute; margin: -40px 0 0 193px"><button type="button" class="btn btn-primary"><i class="bi bi-play-fill"></i></button></div>
                    <div style="position: absolute; margin: -40px 0 0 235px"><button type="button" style="width: 95px; height: 40px; font-size: 20px" class="btn btn-dark">2:30</button></div>
                </a>
                <a href="">
                    <p style="width:330px; font-size:25px">${r.title}</p>
                </a>
                </div>
            </li>
            </c:forEach>

                <input type="hidden" id="rno" name="rno" value="1">
            </ul>
        </div>

    </div>


    <div class="row">
        <div class="col text-center">
            <button type="button" id ="morebtn" class="page-item active btn btn-primary" style="font-size: 50px;">μμ λλ³΄κΈ°</button>
        </div>
    </div>
</div> <!-- main -->