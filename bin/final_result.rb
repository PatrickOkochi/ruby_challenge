
#!/usr/bin/env ruby

require 'csv'
require_relative 'csv_result'

class FinalResult

  def results(f)

    d = File.open(f, "r")
    h = CSV.parse_line(d)
    rcs = []
    CSV.foreach(f) do |r|
      if r.length == 16
        rcs << CsvResult.new(r,h).attributes
      end
    end
    rcs.compact
    {
      filename: File.basename(f),
      document: d,
      failure_code: h[1],
      failure_message: h[2],
      records: rcs
    }
  end
end