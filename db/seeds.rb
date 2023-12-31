# db/seeds.rb

# ニュースアイテムのシードデータを作成
news_items = [
  { title: 'AIの進化が止まらない！最新技術をチェック', content: 'AI技術が新たなステージへと進化し、日常生活における応用範囲が広がっています。', created_at: 10.days.ago },
  { title: '地球温暖化対策の新提案', content: '地球温暖化に対処するための新技術や政策について専門家が解説。', created_at: 8.days.ago },
  { title: 'スポーツ界に吹く新風', content: '近年のスポーツ科学の進歩がアスリートたちの記録向上につながっています。', created_at: 7.days.ago },
  { title: 'ロボット工学の最前線', content: '人間の作業をアシストするロボットの最新事情をお届けします。', created_at: 5.days.ago },
  { title: '健康食品市場の新トレンド', content: '健康志向が強まる中で注目される新製品をご紹介。', created_at: 4.days.ago },
  { title: '絶景！世界の秘境を巡る', content: 'まだあまり知られていない世界の絶景を特集します。', created_at: 4.days.ago },
  { title: 'エコな生活スタイルのすすめ', content: '環境に優しい生活を送るためのヒントをご提案。', created_at: 3.days.ago },
  { title: '宇宙旅行が身近に？', content: '近い将来実現可能になるかもしれない宇宙旅行の最新ニュース。', created_at: 2.days.ago },
  { title: 'VR技術の革新がもたらすもの', content: 'バーチャルリアリティの未来をチェックしましょう。', created_at: 1.day.ago },
  { title: '次世代のスマートフォン機能に注目！', content: '新しく登場するスマートフォンの機能をいち早くご紹介。', created_at: Time.current }
]

news_items.each do |news_item|
  News.create!(news_item)
end

# スタッフのシードデータを作成
staff_members = [
  { name: '藤井 純', position: '塾長', specialty: '国語、算数、理科、社会', description: '複数のAIプロジェクトを成功に導いた経験を持ちます。' },
  { name: '田中花子', position: 'デザイナー', specialty: 'ユーザーインターフェース', description: '直感的で使いやすいデザインを得意とし、ユーザーから高い評価を受けています。' },
]

# それぞれのスタッフアイテムをデータベースに追加
staff_members.each do |staff_member|
  Staff.create!(staff_member)
end


# Seed the first user as admin
User.create!(
  name: '管理者',
  email: 'a@a',
  password: '11111q',
  password_confirmation: '11111q',
  admin: true
)

# Seed the second user as a normal user
User.create!(
  name: '一般',
  email: 'b@b',
  password: '11111q',
  password_confirmation: '11111q',
  admin: false
)
