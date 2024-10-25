# Create a new instance
# 1
restaurant = Restaurant.new(name: 'Sukiya')
restaurant.save
# 2 -> Direct to DB
Restaurant.create(name: 'Sukiya')

# Get all records
Restaurant.all

# Reader
instance.name
instance.address
instance.rating
# Writer
instance.name = 'New name'
instance.address = 'New Address'
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
Restaurant.where('address LIKE ?', '%m%')
