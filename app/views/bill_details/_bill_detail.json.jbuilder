json.extract! bill_detail, :id, :BillID, :NameCus, :Phonenumber, :Product, :TotalBill, :created_at, :updated_at
json.url bill_detail_url(bill_detail, format: :json)
