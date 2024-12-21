import requests

url = "https://garden-api.p.rapidapi.com/plants"

headers = {
	"x-rapidapi-key": "a26d44477amshb6aaab5d2a7e338p193edejsn131e2aa2b543",
	"x-rapidapi-host": "garden-api.p.rapidapi.com"
}

response = requests.get(url, headers=headers)

print(response.json())