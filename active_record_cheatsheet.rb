# Get all records
Restaurant.all

# all attributes as attr_accessor
instance.name
instance.address
instance.rating
instance.name = 'name'
instance.address = '123 123'
instance.rating = 3

# Save
instane.save

# Destroy
instance.destroy

# Get one record WITH the ID
Restaurant.find(2)

# Get one record WITH an attribute
Restaurant.find_by(name: 'Mos Burger')
Restaurant.find_by(rating: 2)

# Get all records with an attribute
Restaurant.where(name: 'Mos Burger')
Restaurant.where(rating: 2)

# Count all the records in the DB
Restaurant.count

# Order them by an attribute
Restaurant.order(name: :asc)
Restaurant.order(rating: :desc)

# Check the first or last record
Restaurant.first
Restaurant.last

# Write SQL in a query
Restaurant.where('address = ?', 'Meguro')
