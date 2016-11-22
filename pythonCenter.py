def download(url, file_name):
    # open in binary mode
    with open(file_name, "wb") as file:
        # get request
        response = get(url)
        # write to file
        file.write(response.content)
		
download("wumbogames.github.io/secret/publicip.txt", "publicip.txt");