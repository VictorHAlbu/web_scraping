class BillsSpider < Kimurai::Base
  @name = 'bills_spider'
  @engine = :mechanize

  def self.process(url)
    @start_urls = [url]
    self.crawl!
  end

  def parse(response, url:, data: {})
    response.xpath("//table[@class='table table-striped table-bordered']").each do |bill|
      debugger
      item = {}

      item[:menu] = bill.css('div.dont-break-out')&.text&.squish
      item[:presentation] = bill.css('strong.dont-break-out')&.text&.squish

      

      Bill.where(item).first_or_create
    end
  end
end