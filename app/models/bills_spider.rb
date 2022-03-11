class BillsSpider < Kimurai::Base
  @name = 'bills_spider'
  @engine = :mechanize

  def self.process(url)
    @start_urls = [url]
    self.crawl!
  end

  def parse(response, url:, data: {})
    response.xpath("//table[@class='table table-striped table-bordered']").each do |bill|
      item = {}
      
      item[:menu] = bill.css('div.dont-break-out')[0]&.text&.squish
      item[:presentation] =  bill.css('strong')[2]&.next.text&.squish
      item[:author] =  bill.css('strong')[3]&.next.text&.squish
      item[:current_location] =  bill.css('strong')[4]&.next.text&.squish
      item[:status] =  bill.css('strong')[5]&.next.text&.squish
      item[:end_date_deadline] =  bill.css('strong')[6]&.next.text&.squish&.to_date
      item[:last_processing_date] =  bill.css('strong')[7]&.next.text&.squish&.to_date
      item[:last_action] =  bill.css('strong')[8]&.next.text&.squish


      Bill.where(item).first_or_create
    end
  end
end