1. question (질문자 이름/ 내용)
 - controller : question
 - action : index, show
   - index : form을 통해 질문을 받는다. (익명 or 실명)
   - show : 입력된 질문을 보여준다.
 - model : 
   - name : (질문자 이름)
   - content (내용)


#회원가임
== Database 유저 정보를 저장하는 것
1. User 테이블 생성
 - User model
2. User 정보를 저장
 - 회원정보를 받아, DB에 저장
 - 

#로그인
== session 유저 정보를 검증을 거친 후 저장하는 것
1. User 정보를 받는다
2. 받은 User 정보와 DB의 User 정보가 일치하는지 확인
3. if 일치, session에 유저 정보를 넣는다.
     session[:email] = 유저 정보
   else 
     이유를 알려주고 로그인 안시킨다.
4. fhrm dkdnt
   session.clear