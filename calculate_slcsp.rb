require 'csv'

RateArea = Struct.new(:state, :number)
Plan = Struct.new(:plan_id, :rate_area, :metal_level, :rate)
ZipCode = Struct.new(:zipcode, :state, :county_code, :name, :rate_area)

plans_by_rate_area = Hash.new { |h, k| h[k] = [] }
zip_to_rate_area = Hash.new { |h, k| h[k] = [] }

CSV.foreach('plans.csv', headers: true) do |row|
  next unless row['metal_level'] == "Silver"

  rate_area = RateArea.new(row['state'], row['rate_area'])
  plan = Plan.new(row['plan_id'], rate_area, row['metal_level'], row['rate'])

  key = rate_area.to_s

  plans_by_rate_area[key] << plan
end

CSV.foreach('zips.csv', headers: true) do |row|
  rate_area = RateArea.new(row['state'], row['rate_area'])
  zip_code = row['zipcode']

  unless zip_to_rate_area[zip_code].include?(rate_area.to_s)
    zip_to_rate_area[zip_code] << rate_area.to_s
  end
end

CSV.open('slcsp_output.csv', 'w') do |csv|
  csv << ['zipcode', 'rate']

  CSV.foreach('slcsp.csv', headers: true) do |row|
    zip_code = row['zipcode']
    rate_areas = zip_to_rate_area[zip_code]

    next if rate_areas.length != 1

    silver_plans = plans_by_rate_area[rate_areas.first]
    rates = silver_plans.map(&:rate).sort
    slcsp_rate = rates[1]

    csv << [zip_code, slcsp_rate ? '%.2f' % slcsp_rate : nil]
  end
end
