import random

# List of possible destinations and activities
destinations = ['Paris', 'Tokyo', 'New York', 'Rio de Janeiro', 'Barcelona']
activities = ['Museum visit', 'Hiking', 'City tour', 'Beach day', 'Food tour']

# Function to generate a random itinerary based on user inputs
def generate_itinerary(budget, destination, duration, travel_preferences):
    itinerary = []
    remaining_budget = budget
    remaining_duration = duration
    
    # Determine number of activities based on travel preferences and duration
    if travel_preferences == 'relaxed':
        num_activities = random.randint(2, 4)
    elif travel_preferences == 'moderate':
        num_activities = random.randint(4, 6)
    elif travel_preferences == 'active':
        num_activities = random.randint(6, 8)
    
    # Choose activities randomly until the itinerary is full or budget/duration are exhausted
    for i in range(num_activities):
        activity = random.choice(activities)
        cost = random.randint(20, 100)
        duration = random.randint(1, 5)
        if cost <= remaining_budget and duration <= remaining_duration:
            itinerary.append((activity, cost, duration))
            remaining_budget -= cost
            remaining_duration -= duration
        else:
            break
    
    # Add destination to itinerary
    itinerary.append(('Travel to ' + destination, 0, duration))
    
    return itinerary

# Example usage of generate_itinerary function
budget = 1000
destination = 'Tokyo'
duration = 10
travel_preferences = 'active'

itinerary = generate_itinerary(budget, destination, duration, travel_preferences)

# Print the generated itinerary
print('Your itinerary:')
for activity, cost, duration in itinerary:
    print('- {} ({} hours) - ${}'.format(activity, duration, cost))