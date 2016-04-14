# AM: Digging this clean set-up (even though there's a lot of stuff in the JSON file!).
data = JSON.parse(File.read("db/snacks_data.json"))
Snack.destroy_all
Snack.create!(data)
