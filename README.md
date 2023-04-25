[![Image from Gyazo](https://i.gyazo.com/a8d41b9d6344c427561fb682299dd74a.jpg)](https://gyazo.com/a8d41b9d6344c427561fb682299dd74a)

# 使用技術
フロントエンド : HTML / CSS / Javascript / jQuery

バックエンド : Ruby 2.6.5p114 / Ruby on Rails 6.1.7.3

エディタ : VSCode

# 自己紹介サイト
自分自身を知ってもらえるように経歴、趣味、スキルを載せています。

### 工夫したポイント

__画像をスライドショーで流す__

趣味の紹介部分で載せたい画像が多くありました。縦に写真を並べるとスクロール部分が長くなり、何段かつけて横に写真を並べると一つ一つが小さく見づらくなってしまいました。その為、jQueryのslickというプラグインを使用しスライドショーように流すことで、写真をより見やすく実装することができました。

[![Image from Gyazo](https://i.gyazo.com/b91cf1f067533f8f06fe808350ec80ea.gif)](https://gyazo.com/b91cf1f067533f8f06fe808350ec80ea)

__問い合わせフォームを実装する__

本番環境にした際、見ている人がお仕事の依頼や自分へコンタクトを取る手段が必要だと考えました。初めはSNSのリンクを貼ることも考えましたが仕事用SNSを持っていない為、メールでやり取りするのが適切と思い問い合わせフォームを実装しました。railsのmailcatcherというGemを使用してテストメールサーバーを構築し、テストメールを送信できるようにしました。

[![Image from Gyazo](https://i.gyazo.com/e0e07ce982d6d1ac8f3f9c5f9a8e3981.gif)](https://gyazo.com/e0e07ce982d6d1ac8f3f9c5f9a8e3981)

### 今後、実装したい機能

- 本番環境にする
- 携帯にも合わせたレスポンシブデザインにする(文字や写真ののサイズが崩れないように工夫する)