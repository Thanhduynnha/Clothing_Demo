json.extract! employee, :id, :Em_ID, :Name, :Dob, :Hometown, :Phonenumber, :Email, :created_at, :updated_at
json.url employee_url(employee, format: :json)
