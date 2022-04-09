module CompaniesHelper
  def international_phone(phone)
    "(+40) "+phone[1..-1]
  end
  def tel(phone)
    "4"+phone.gsub(".","")
  end
end
