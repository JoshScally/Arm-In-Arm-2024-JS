json.extract! household, :id, :headname, :headdob, :headgender, :headethnicity, :numadults, :numchild, :streetaddr, :city, :state, :county, :zipcode, :phonenum, :incomesource, :qualifiercode, :netincome, :householdtype, :foodstamps, :user_id, :created_at, :updated_at
json.url household_url(household, format: :json)
json.url home_url(root_path, format: :json)