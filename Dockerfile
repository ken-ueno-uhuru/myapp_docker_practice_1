# 使用するnode.jsのイメージを指定
FROM node:lts

# コンテナ内での作業ディレクトリを指定する。以降のコマンドは、指定したディレクトリ内で実施される
WORKDIR /app

# package.json および package-lock.json を先にコピー
COPY ./package*.json .

# npmをインストールし、必要な依存関係をインストールする
RUN npm install

# 残りのアプリケーションファイルをコピー
COPY . .

# 3000番ポートを解放する
EXPOSE 3000

# コンテナが起動した時の起動コマンドを設定
CMD ["node", "index.js"]