json.extract! household, :id, :headname, :headdob, :headgender, :headethnicity, :numadults, :numchild, :streetaddr, :city, :state, :county, :zipcode, :phonenum, :incomesource, :qualifiercode, :netincome, :householdtype, :foodstamps, :created_at, :updated_at
json.url household_url(household, format: :json)
