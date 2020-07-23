url = 'https://gist.githubusercontent.com/ViachMoz/6e75504336dbedbc5e7bb4cb9e8ed7de/raw/c88cb2c9921a50a0b90e573c4865f3c79a6a9231/searchable_data.json'
resp = Faraday.get(url, {a: 1}, {'Accept' => 'application/json'})

LOADED_DATA = JSON.parse(resp.body)