json.array!(@data_sheets) do |data_sheet|
  json.extract! data_sheet, :id, :start_date, :hz
  json.url data_sheet_url(data_sheet, format: :json)
end
