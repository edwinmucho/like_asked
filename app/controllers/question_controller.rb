class QuestionController < ApplicationController
  def index
    @questions = Question.all  
  end

  def show
    @content = params[:content]
    @id = params[:anony] == "anonymous" ? "anonymous" : params[:id]
    
    Question.create(
      name: @id,
      content: @content
      )
    
  end
  
  def signup
  end
  def sign_up_process
    @email = params[:email]
    @name = params[:name]
    @pw = params[:pw]
    
    User.create(
      email: @email,
      name: @name,
      password: @pw
      )
  end
  
  def login_process
    email = params[:email]
    pw = params[:pw]
    @message=''
    
    user = User.find_by(email: email)
    
    if user
      if user.password == pw
        session[:user_id] = user.id
        session[:user_name] = user.name
        redirect_to '/'
      else
        @message='Wrong PassWord'
      end
    else
      @message = "없는 정보이거나 이메일이 잘못됐습니다."
    end
    
  end
  
  def logout
    session.clear
    redirect_to '/'
  end
end
