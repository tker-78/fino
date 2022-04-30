# README

## このアプリに求める機能
- LINEに特定のワードを入れると、現在の総資産、今月の支出、収入など、家計情報を教えてくれる
- グラフを要求すれば、グラフの画像ファイルまたはリンク先を教えてくれる
- 銀行口座の情報にアクセスできる
- クレジットカードの利用情報にアクセスできる
- 収入の変化、家などの資産の購入、教育費用など、条件の変化に対応してシミュレーションができる

## 構成(使うgemなど)
- rails 7.0.2.3
- ruby 2.7.4
- devise
- line-bot-sdk-ruby
- chartkick
- aws
- groupdate
- rspec-rails
- bootstrap


# 変動費VriableExpenseモデル

支払い年/月

支払い方法


食費 food
  - 外食費
  - 食料品

自動車 car
  - ガソリン代
  - メンテナンス費用
  - 高速道路

交通費 trans
  - 帰省
  - 観光

出産育児 child
  - 消耗品
  - 洋服
  - その他

日用品 comodity
  - 日用品

家具家電 furniture
  - 家具
  - 家電

プレゼント present
  - プレゼント

現金 cash
  - 現金


# 固定費FixedExpenseモデル
住居費 house
 - 家賃
 - 共益費

自動車 car
  - 駐車場

保険 insurance
 - 生命保険
 - 火災保険

税金 tax
  - 所得税
  - 住民税
  - ふるさと納税
  - 自動車税

お小遣い personal
  - きのし
  - さくし
  - になし
  - 次の人

通信費 communication
  - インターネット
  - 携帯電話
  - NHK

水道光熱費 infra
  - 水道
  - 電気
  - ガス