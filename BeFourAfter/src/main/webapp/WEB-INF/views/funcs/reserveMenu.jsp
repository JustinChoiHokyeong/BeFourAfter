
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--바로가기-->

        <div class="container">
            <div style="width: 100%; min-height: 1px; height: 60px;">
            	<a href="${pageContext.request.contextPath }/reserve/leave_insertform.do" ><button class="btn"">출국  서비스</button></a>
                <a href="${pageContext.request.contextPath }/reserve/ent_insertform.do"><button class="btn">입국  서비스</button></a>
                <span>
                    <button class="btn" type="button" data-bs-toggle="dropdown" aria-expanded="true" >예약 신청 내역</button>
                    <ul class="dropdown-menu">
                        <li>
                        	<a class="dropdown-item" href="${pageContext.request.contextPath }/reserve/list.do" >출국 신청 내역</a>
                        </li>
                        <li>
                        	<a class="dropdown-item" href="${pageContext.request.contextPath }/reserve/list2.do">입국 신청 내역</a>

                        </li>
                    </ul>
                </span>
            </div>
        </div>
<!--/바로가기-->