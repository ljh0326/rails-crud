Rails.application.routes.draw do

#이거 하나가 아래 전부있는걸 생성해줌
resources 'posts'

# #Method를 이용해서 이 Resource를 조작하는 방법을 아래에 기술
# #1. 우리가 쓴 글 들을 다 볼 수 있는 페이지(Read)
# get '/posts' => 'posts#index'

# #2. 우리가 새 글을 쓰는 페이지(Read)
# get '/posts/new' => 'posts#new'

# #3. 새 글을 받는 페이지(Create를 해주는 곳)
# #메소드가 담당하는 부분은 굳이 uri에 넣지 않음 즉 /posts/create아님
# #post가 이미 create란게 포함되어 있다.
# post '/posts' => 'posts#create'

# #4 특정 글을 보는 페이지
# get '/posts/:id' => 'posts#show', as: "post"

# #5 글을 수정하는 페이지
# #id로 특정 폿트 선택하고 에딧페이지 불러오라는 명
# get '/posts/:id/edit' => 'posts#edit', as: "edit_post"

# #5. 수정한 글을 받아서 업데이트 해주는 페이지(Update를 해주는 곳)
# #update는 이미 메소드에 update의미가 포함되어 있어서 /posts/:id/update이렇게 안함
# put   '/posts/:id' => 'posts#update'
# patch '/posts/:id' => 'posts#update'

# #6. 특정 글을 삭제하는 페이지
# delete '/posts/:id' => 'posts#destroy'
end
