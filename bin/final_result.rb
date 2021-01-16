
#!/usr/bin/env ruby

require 'csv'
require_relative 'csv_result'

class FinalResult

  def results(f)
    columns = {
      "amt_col"   =>  8,
      "ban_col"   =>  6,
      "bac_col"   =>  2,
      "e2e_col"   =>  10,
      "ban_name"  =>  7,
      "ban_code"  =>  0
    }

    d = File.open(f, "r")
    h = CSV.parse_line(d)
    rcs = []
    CSV.foreach(f) do |r|
      if r.length == 16
        rcs << CsvResult.new(r,h,columns).attributes
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