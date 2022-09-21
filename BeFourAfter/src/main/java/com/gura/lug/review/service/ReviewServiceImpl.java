package com.gura.lug.review.service;

import java.io.File;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.gura.lug.exception.NotDeleteException;
import com.gura.lug.review.dao.ReviewDao;
import com.gura.lug.review.dto.ReviewDto;

@Service
public class ReviewServiceImpl implements ReviewService {
	@Autowired
	private ReviewDao reviewDao;
	
	//리뷰 이미지 list
	@Override
	public void getList(HttpServletRequest request) {
		//한 페이지에 몇개씩 표시할 것인지
		final int PAGE_ROW_COUNT=8;
		//하단 페이지를 몇개씩 표시할 것인지
		final int PAGE_DISPLAY_COUNT=5;
	   
		//보여줄 페이지의 번호를 일단 1이라고 초기값 지정
		int pageNum=1;
		//페이지 번호가 파라미터로 전달되는지 읽어와 본다.
		String strPageNum = request.getParameter("pageNum");
		//만일 페이지 번호가 파라미터로 넘어 온다면
		if(strPageNum != null){
			//숫자로 바꿔서 보여줄 페이지 번호로 지정한다.
			pageNum=Integer.parseInt(strPageNum);
		}
	   
		//보여줄 페이지의 시작 ROWNUM
		int startRowNum = 1 + (pageNum-1) * PAGE_ROW_COUNT;
		//보여줄 페이지의 끝 ROWNUM
		int endRowNum = pageNum * PAGE_ROW_COUNT;
		
		/*
		[ 검색 키워드에 관련된 처리 ]
		-검색 키워드가 파라미터로 넘어올수도 있고 안넘어 올수도 있다.		
		 */
		String keyword=request.getParameter("keyword");
		String condition=request.getParameter("condition");
		//만일 키워드가 넘어오지 않는다면 
		if(keyword==null){
			//키워드와 검색 조건에 빈 문자열을 넣어준다. 
			//클라이언트 웹브라우저에 출력할때 "null" 을 출력되지 않게 하기 위해서  
			keyword="";
			condition=""; 
		}

		//특수기호를 인코딩한 키워드를 미리 준비한다. 
		String encodedK=URLEncoder.encode(keyword);
		
		//리뷰 Dto 객체에 startRowNum과 endRowNum을  담는다.
		ReviewDto dto = new ReviewDto();
		dto.setStartRowNum(startRowNum);
		dto.setEndRowNum(endRowNum);
		
		//만일 검색 키워드가 넘어온다면 
		if(!keyword.equals("")){
			//검색 조건이 무엇이냐에 따라 분기 하기
			if(condition.equals("reservetype")){//예약 타입인 경우
				//검색 키워드를 Dto 에 담아서 전달한다.
				dto.setReservetype(keyword);
			}else if(condition.equals("title")){ //제목 검색인 경우
				dto.setTitle(keyword);
			}else if(condition.equals("rating")){ //평점 검색인 경우
				dto.setRating(keyword);
			} // 다른 검색 조건을 추가 하고 싶다면 아래에 else if() 를 계속 추가 하면 된다.
		}
		
		//리뷰 목록을 얻어온다. 리뷰Dao 객체를 이용해서
		List<ReviewDto> list = reviewDao.getList(dto);
		//전체 row 의 갯수
		int totalRow = reviewDao.getCount(dto);
		
		//하단 시작 페이지 번호 
		int startPageNum = 1 + ((pageNum-1)/PAGE_DISPLAY_COUNT) * PAGE_DISPLAY_COUNT;
		//하단 끝 페이지 번호
		int endPageNum = startPageNum + PAGE_DISPLAY_COUNT - 1;
		
		//전체 페이지의 갯수 구하기
		int totalPageCount = (int)Math.ceil(totalRow / (double)PAGE_ROW_COUNT);
		//끝 페이지 번호가 이미 전체 페이지 갯수보다 크게 계산되었다면 잘못된 값이다.
		if(endPageNum > totalPageCount){
			endPageNum = totalPageCount; //보정해 준다. 
		}
		
		//request 영역에 담아주기
		request.setAttribute("pageNum", pageNum);	//현재 페이지 번호
		request.setAttribute("startPageNum", startPageNum);	//시작 페이지 번호
		request.setAttribute("endPageNum", endPageNum);	//끝 페이지 번호
		request.setAttribute("condition", condition);
		request.setAttribute("keyword", keyword);
		request.setAttribute("encodedK", encodedK);
		request.setAttribute("totalPageCount", totalPageCount);	//모든 페이지 count
		request.setAttribute("list", list);	//리뷰 list
		request.setAttribute("totalRow", totalRow);
		
	}
	
		//갤러리 detail 페이지에 필요한 data를 ModelAndView 에 저장
		public void getDetail(ModelAndView mView, ReviewDto dto) {
			//dao 로 해당 게시글 num 에 해당하는 데이터(dto)를 가져온다.
			ReviewDto dto2 = reviewDao.getData(dto);
			//ModelAndView 에 가져온 ReviewDto 를 담는다.
			mView.addObject("dto", dto2);
			//조회수 올리기
			reviewDao.addViewCount(dto2.getNum());
			
			
		}
	
	//이미지 추가 - 이미지 업로드 & db 저장
	@Override
	public void saveImage(ReviewDto dto, HttpServletRequest request) {
		//업로드된 파일의 정보를 가지고 있는 MultipartFile 객체의 참조값을 얻어오기
		MultipartFile image = dto.getImage();
		//원본 파일명 -> 저장할 파일 이름 만들기위해서 사용됨
		String orgFileName = image.getOriginalFilename();
		//파일 크기 -> 다운로드가 없으므로, 여기서는 필요 없다.
		long fileSize = image.getSize();
		
		// webapp/upload 폴더 까지의 실제 경로(서버의 파일 시스템 상에서의 경로)
		String realPath = request.getServletContext().getRealPath("/upload");
		//db 에 저장할 저장할 파일의 상세 경로
		String filePath = realPath + File.separator;
		//디렉토리를 만들 파일 객체 생성
		File upload = new File(filePath);
		if(!upload.exists()) {
			//만약 디렉토리가 존재하지X
			upload.mkdir();//폴더 생성
		}
		//저장할 파일의 이름을 구성한다. -> 우리가 직접 구성해줘야한다.
		String saveFileName = System.currentTimeMillis() + orgFileName;
		
		try {
			//upload 폴더에 파일을 저장한다.
			image.transferTo(new File(filePath + saveFileName));
			System.out.println();	//임시 출력
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		//dto 에 업로드된 파일의 정보를 담는다.
		//-> parameer 로 넘어온 dto 에는 title, image 가 들어 있었다.
		//-> 추가할 것 : writer(id), imagePath 만 추가로 담아주면 된다.
		//-> num, regdate : db 에 추가하면서 자동으로 들어감
		String id = (String)request.getSession().getAttribute("id");
		dto.setWriter(id);
		//리뷰 는 사진 다운 기능이 없다. -> orgFileName, saveFileName, fileSize 저장할 필요X
		//imagePath 만 저장해주면 됨
		dto.setImagePath("/upload/" + saveFileName);
		
		//리뷰Dao 를 이용해서 DB 에 저장하기
		reviewDao.insert(dto);
	}
	
	
	
	@Override
	public void insert(ReviewDto dto, HttpServletRequest request) {
		//dto : title, imagePath 가지고 있다.
		//dto 에 writer(id) 추가
		dto.setWriter((String)request.getSession().getAttribute("id"));
		
		//리뷰Dao 를 이용해서 DB 에 저장하기
		reviewDao.insert(dto);
		
	}
	
	
	@Override
	public void deleteReview(ReviewDto dto, HttpServletRequest request) {
		//세션에서 로그인된 아이디를 읽어와서
		String id=(String)request.getSession().getAttribute("id");
		//삭제할 글의 작성자
		String writer=reviewDao.getData(dto).getWriter();
		//만일 글의 작성자가 로그인된 아이디와 다르다면 
		if(!writer.equals(id)) {
			//예외를 발생시켜서 응답을 예외 Controller 에서 하도록 한다.
			throw new NotDeleteException("다른 사람의 리뷰는 삭제할 수 없습니다.");
		}
		//본인이 작성한 글이 아니면 아래의 코드가 실행이 안되야 된다. 
		reviewDao.delete(dto);
	}
	
}


	

