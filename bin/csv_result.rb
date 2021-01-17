class CsvResult

  def initialize(r,h)

    @r = r
    @h = h
    @amt_col = 8
    @ban_col = 6
    @bac_col = 2
    @e2e_col = 10
    @ban_name = 7
    @ban_code = 0
  end

  def attributes
    {
      amount:{
        currency: currency,
        subunits: subunits
      },
      bank_account_name: bank_account_name,
      bank_account_number: bank_account_number,
      bank_branch_code: bank_branch_code,
      bank_code: bank_code,
      end_to_end_id: end_to_end_id,
    }
  end


  private

  def currency
    @h[0]
  end

  def subunits
    amt = @r[@amt_col].nil? || @r[@amt_col] == "0" ? 0 : @r[@amt_col].to_f
    
    (amt * 100).to_i
  end

  def bank_account_name
    @r[@ban_name].downcase.gsub(" ", "_")
  end

  def bank_account_number
    @r[@ban_col].nil? ? "Bank account number missing" : @r[@ban_col].to_i
  end

  def bank_branch_code
    @r[@bac_col].nil? ? "Bank branch code missing" : @r[@bac_col]
  end

  def bank_code
    @r[@ban_code]
  end

  def end_to_end_id
    @r[@e2e_col].nil? && @r[@e2e_col+1].nil? ? "End to end id missing" : @r[@e2e_col] + @r[@e2e_col+1]
  end
end