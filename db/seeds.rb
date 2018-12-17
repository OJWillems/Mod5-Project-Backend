Band.create(username: 'Queens', password: 'qpass', band_name: 'QOTSA', bio: 'We rock!')
Band.create(username: 'RedHot', password: 'rpass', band_name: 'RHCP', bio: 'We also rock!')

Listener.create(username: 'Ollie', password: 'olliep', name: 'Olivier')
Listener.create(username: 'Jordan', password: 'jordanp', name: 'Jordan')

Favorite.create(band_id: 1, listener_id: 2)
Favorite.create(band_id: 2, listener_id: 1)
