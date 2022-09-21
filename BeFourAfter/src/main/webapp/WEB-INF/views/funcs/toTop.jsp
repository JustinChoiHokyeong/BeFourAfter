<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>/views/toTop.jsp</title>
        <style>
            #go-top {
                display: none;
                position: fixed;                
                right: 30px;
                bottom:300px;
                vertical-align:middle; 
                outline: 0;
                border: 0;
                background: transparent;
                cursor: pointer;
                z-index: 9999;
                color: #3F51B5;
                /*색바꾸셈!*/
            }
        </style>
    </head>

    <body>
        <button id="go-top">위로</button>
        <script>
            let toTop = ()=>{
                // 스크롤 버튼 숨김
                window.addEventListener('scroll', ()=>{
                    if (document.querySelector('html').scrollTop > 50) {
                        document.getElementById('go-top').style.display = "block";
                    } else {
                        document.getElementById('go-top').style.display = "none";
                    }
                });
                // 클릭시 맨위 맨왼쪽으로 
                document.getElementById('go-top').addEventListener('click', () => {
                    window.scrollTo({
                        top: 0,
                        left: 0,
                    });
                })
            };
            toTop();
        </script>
    </body>

    </html>