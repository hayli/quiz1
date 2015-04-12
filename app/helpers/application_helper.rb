module ApplicationHelper
  def show_bg
    "background: #1abc9c url(#{@quiz.photo}) no-repeat center center fixed;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;"
  end
end
