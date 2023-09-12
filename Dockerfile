# ベースイメージを選択
FROM ruby:3.1.2

# 必要なパッケージのインストール
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Node.jsのインストール (バージョンは適宜変更してください)
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

# Yarnのインストール
RUN npm install -g yarn

# 作業ディレクトリを設定
WORKDIR /app

# GemfileとGemfile.lockをコピーし、依存関係をインストール
COPY Gemfile Gemfile.lock ./
RUN bundle install

# アプリケーションのコードをコピー
COPY . .

# ポートを公開
EXPOSE 3000

# アプリケーションを起動
CMD ["rails", "server", "-b", "0.0.0.0"]
