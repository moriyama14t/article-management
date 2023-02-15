source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Rubyバージョン
ruby '3.1.1'

# Railsバージョン
gem 'rails', '~> 7.0.4'

# アセットパイプライン
gem 'sprockets-rails'
#【メモ】アセットパイプラインとは、JavaScriptやCSSのアセットを最小化 (minify: スペースや改行を詰めるなど) または圧縮して連結するためのフレームワーク
# https://railsguides.jp/asset_pipeline.html 
# https://www.wantedly.com/companies/wantedly/post_articles/354873
# https://qiita.com/ttaka66/items/991a52081a92cb6c2738 

# アプリケーションサーバー
gem 'puma', '~> 5.0'
#【メモ】PumaとはWebサーバーの一種であるが、アプリケーションサーバーとして主に作用し、リクエスト処理の高速化を行なっている
# https://kichintodaisuke.wordpress.com/2020/04/29/rails%EF%BC%9Apuma%E3%81%AF%E4%BD%95%E8%80%85%EF%BC%9F/


# cssバンドラ
gem 'cssbundling-rails'
#【メモ】Rails7では加えてバンドルの必要なTailwind CSS, Bootstrap, Bulma, PostCSS,Dart Sassなどを組み込む
# https://hazm.jp/archives/147

# Railsの起動時間を短縮ライブラリ
gem 'bootsnap', require: false
# https://qiita.com/Daniel_Nakano/items/aadeaa7ae4e227b73878

# データベース(PostgreSQL)
gem 'pg', '~> 1.1'

# 認証ライブラリ
gem 'devise'
#【メモ】Omniauthable（SNS認証）Confirmable（メール登録確認）Rememberable（永続ログイン機能）Trackable（サインイン回数、サインイン時間など、ユーザーの分析に必要なデータを保存）
# https://www.sejuku.net/blog/13378

# 論理削除ライブラリ
gem 'discard'

# 環境変数管理ライブラリ
gem 'dotenv-rails'

# 権限ライブラリ
gem 'cancancan'

group :development, :test do

  # デバッグライブラリ
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  # https://qiita.com/yuskubo/items/111a87e2402de8e12914
end

group :development do

  # デバッグライブラリ
  gem 'web-console'
  # https://qiita.com/pekepek/items/74c8b1f4c886fc9b15cd

  # 静的コード解析
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec'
  # https://qiita.com/tomohiii/items/1a17018b5a48b8284a8b

  # ER図生成
  gem 'rails-erd'
  # https://www.sejuku.net/blog/66196
end

group :test do
  # テスト用フレームワーク
  gem 'capybara'
  #【メモ】MinitestやRSpecなどのテスティングライブラリと合わせて使う
  # https://qiita.com/mmaumtjgj/items/0798eb4c3ce062bd505f

  # ブラウザを操作ライブラリ
  gem 'selenium-webdriver'
  gem 'webdrivers'
  # https://magazine.techacademy.jp/magazine/18704  
end

gem "dockerfile-rails", ">= 1.0", :group => :development

##############################↓↓↓↓↓使用していないGem↓↓↓↓↓↓##############################
# redis(インメモリデータベース)
#gem 'redis', '~> 4.0'
# https://www.sejuku.net/blog/58218
# https://qiita.com/hirotakasasaki/items/9819a4e6e1f33f99213c

#　TZInfoが参照するタイムゾーン情報を提供するライブラリ
# gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
# 【メモ】Windowsでタイムゾーン情報を取得することを目的

# JavaScriptライブラリ
# gem 'stimulus-rails'
#【メモ】少ないJavaScriptの記述量でアニメーションやDOM操作が可能となる
# https://blog.to-ko-s.com/stimlus-introduce/

# sassのコンパイルを高速化
# gem "sassc-rails"
# https://qiita.com/patorash/items/92e2b67d8205195c8d33

# 画像管理ライブラリ
# gem "image_processing", "~> 1.2"
# https://qiita.com/fgem28/items/54c5ca70753f16ef420c

# jsonライブラリ
# gem 'jbuilder'
#【メモ】SON形式のデータを簡単に作成する事が出来る
# https://qiita.com/ryouzi/items/06cb0d4aa7b6527b3645

# jsバンドラ
# gem 'jsbundling-rails'
#【メモ】 jsbundling-rails gemは、esbuild、rollup.js、webpackのいずれかを用いてJavaScriptコードをバンドルし、Railsのアセットパイプラインで配信します。
# https://techracho.bpsinc.jp/hachi8833/2022_09_21/121895
# https://codezine.jp/article/detail/16059

# TypeScriptで書かれたサーバー側言語に依存しないフレームワーク
# gem 'turbo-rails'
# ->サーバー側言語との接続にはアダプタを書く必要がある
#【メモ】Turbo Frames を使うことで、JavaScriptを書くことなく部分更新と遅延読み込みを実現できる。
# https://zenn.dev/takeyuwebinc/articles/4bbb3df6ef6344

##########################################################################################
