class ReportService
  class << self
    def import(data)
      columns = %i[md5sum type file field_4 field_5 field_6 field_7 field_8]
      json = Oj.load(data)
      Report.import(columns, json['task']['result']['data']['reports'])
    end
  end
end