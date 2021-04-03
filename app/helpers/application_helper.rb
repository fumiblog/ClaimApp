module ApplicationHelper
  def default_meta_tags
    {
      site: '請求サイト（Claim_site）',
      title: 'トップページ',
      reverse: true,
      charset: 'utf-8',
      description: 'ご訪問ありがとうございます。請求書の管理ができるサイトを作成しました。uby on ralesで作成しました。',
      keywords: 'ruby,rails,claim,請求',
      canonical: request.original_url,
      separator: '|',
      icon: [
        { href: image_url('coffee.png') }
      ],
      og: {
        site_name: :site, # もしくは site_name: :site
        title: :title, # もしくは title: :title
        description: :description, # もしくは description: :description
        type: 'claim_site',
        url: request.original_url,
        image: image_url('coffee.png'),
        locale: 'ja_JP',
      },
      twitter: {
        card: 'summary_large_image',
        site: '@fumihisa_y',
      }
    }
  end
end
