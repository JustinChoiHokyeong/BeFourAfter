
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--바로가기-->
    <div>
        <div class="container p-5 text-center">
            <div style="width: 100%;">
                <a href="${pageContext.request.contextPath }/reserve/ent_insertform.do"><button class="btn" style="width:133px;">입국  서비스</button></a>
                <a href="${pageContext.request.contextPath }/reserve/leave_insertform.do"><button class="btn" style="width:133px;">출국  서비스</button></a>
                <span>
                    <button class="btn" type="button" data-bs-toggle="dropdown" aria-expanded="false" style="width:133px;">나의 예약</button>
                    <ul class="dropdown-menu" style="    --bs-dropdown-min-width: 0rem;  ">
                        <li>
                        	<a class="btn" href="${pageContext.request.contextPath }/reserve/list.do">출국 예약 확인</a>
                        </li>
                        <li>
                        	<a class="btn" href="${pageContext.request.contextPath }/reserve/list2.do">입국 예약 확인</a>
                        </li>
                    </ul>
                </span>
            </div>
        </div>
    </div>
	<!--/바로가기-->