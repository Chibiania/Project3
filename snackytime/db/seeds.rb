data = JSON.parse(File.read("db/snacks_data.json"))
Snack.destroy_all
Snack.create!(data)
